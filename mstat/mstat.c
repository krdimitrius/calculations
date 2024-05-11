/**
 * @file mstat.c
 * @author Dmitry Krysin
 * @date 2020
 * @brief Статистическая обработка массива
 */

//------------------------------------------------------------------------------
// includes
//------------------------------------------------------------------------------
#include <stdio.h>
#include <stdint.h>
#include <string.h>
#include <assert.h>
#include <math.h>

//============================================================================//
//            G L O B A L   D E F I N I T I O N S                             //
//============================================================================//

//------------------------------------------------------------------------------
// const defines
//------------------------------------------------------------------------------

//------------------------------------------------------------------------------
// module global vars
//------------------------------------------------------------------------------
typedef struct statistic_
{
	int n;
	double min; ///< минимум
	double max; ///< максимум
	double a; ///< сумма x
	double b; ///< сумма x^2
	double c; ///< сумма x^3 + x
	double d; ///< сумма x^4 
	double m1; ///< среднее
	double m2; ///< среднее квадратичное
	double d1; ///< дисперсия смещенная D
	/**
	 * стандартное отклонение смещенное (среднеквадратичная погрешность,
	 * если за точное принять среднее значение)
	 */
	double s1;
	double d2; ///< дисперсия несмещенная
	double s2; ///< стандартное отклонение несмещенное
	double k; ///< центральный момент M3
	double l; ///< центральный момент M4
	double a1; ///< ассиметрия
	double e; ///< эксцесс
	int is_normal; ///< флаг нормального распределения
} statistic_t;

void statistic_add(statistic_t * pstat_p, double x_p)
{
	assert(pstat_p != 0);

	if (pstat_p->n == 0) {
		pstat_p->min = pstat_p->max = x_p;
		pstat_p->a = pstat_p->b = pstat_p->c = pstat_p->d = 0;
	}
	else {
		if (pstat_p->max < x_p) 
			pstat_p->max = x_p;
		if (pstat_p->min > x_p) 
			pstat_p->min = x_p;
	}
	pstat_p->n++;
	double w = x_p;
	pstat_p->a += w;
	w *= x_p;
	pstat_p->b += w;
	w *= x_p;
	pstat_p->c += w;
	w *= x_p;
	pstat_p->d += w; 
}

void statistic_del(statistic_t * pstat_p, double x_p)
{
	assert(pstat_p != 0);

	if (pstat_p->n > 1) {
		pstat_p->n--;
		double w = x_p;
		pstat_p->a -= w;
		w *= x_p;
		pstat_p->b -= w;
		w *= x_p;
		pstat_p->c -= w;
		w *= x_p;
		pstat_p->d -= w;
	}
	else {
		pstat_p->n = 0;
		pstat_p->a = pstat_p->b = pstat_p->c = pstat_p->d = 0;
	}
}

void statistic_clear(statistic_t * pstat_p)
{
	assert(pstat_p != 0);

	pstat_p->n = 0;
	pstat_p->a = pstat_p->b = pstat_p->c = pstat_p->d = 0;
}

void statistic_calc(statistic_t * pstat_p)
{
	if (pstat_p->n > 0) {
		// среднее
		pstat_p->m1 = pstat_p->a / pstat_p->n;
		// среднее квадратичное
		pstat_p->m2 = pstat_p->b / pstat_p->n;
		double m3 = pstat_p->c / pstat_p->n;
		double m4 = pstat_p->d / pstat_p->n;
		// дисперсия смещенная D
		pstat_p->d1 = pstat_p->m2 - pstat_p->m1 * pstat_p->m1;
		/* стандартное отклонение смещенное (среднеквадратичная погрешность,
		 * если за точное принять среднее значение)
		 */
		pstat_p->s1 = sqrt(pstat_p->d1);
		// дисперсия несмещенная D0
		pstat_p->d2 = (pstat_p->n < 2) ? (0)
			: (pstat_p->d1
			* (double)pstat_p->n
			/ (double)(pstat_p->n - 1));
		// стандартное отклонение несмещенное
		pstat_p->s2 = sqrt(pstat_p->d2);
		// центральный момент M3
		pstat_p->k = m3 - 3 * pstat_p->m1 * pstat_p->m2
			+ 2 * pstat_p->m1 * pstat_p->m1 * pstat_p->m1;
		double w = pstat_p->m1 * pstat_p->m1;
		// центральный момент M4
		pstat_p->l = m4 - 4 * pstat_p->m1 * m3 + 6 * w * pstat_p->m2 - 3 * w * w;
		// ассиметрия
		pstat_p->a1 = pstat_p->k / pow(pstat_p->d1, 1.5);
		// эксцесс
		pstat_p->e = (pstat_p->d1 == 0) ? (0)
			: (pstat_p->l / pstat_p->d1 / pstat_p->d1 - 3);
		/*
		 * коэффициенты U3 и U4 служат для приближенной проверки
		 * гипотезы о нормальном распределении
		 * A < U3/(2...3)
		 * E < U4/(2...3)
		 */  
		// коэффициент U3
		double u3 = sqrt(6
			* (double)(pstat_p->n - 1)
			/ (double)(pstat_p->n + 1)
			/ (double)(pstat_p->n + 3));
		// коэффициент U4
		double u4 = (pstat_p->n < 2) ? (0) : (sqrt(24
			* (double)pstat_p->n
			* (double)(pstat_p->n - 2)
			* (double)(pstat_p->n - 3)
			/ (double)(pstat_p->n + 3)
			/ (double)(pstat_p->n + 5)
			/ (double)(pstat_p->n - 1)
			/ (double)(pstat_p->n - 1)));
		if ((pstat_p->a1 < u3/2) && (pstat_p->e < u4/2))
			pstat_p->is_normal = 1;
		else
			pstat_p->is_normal = 0;
	}
}

void statistic_print(statistic_t * pstat_p)
{
	printf("\n");
	printf("\nnumber       n= %d", pstat_p->n);
	printf("\nmaximim    max= %g", pstat_p->max);
	printf("\nminimum    min= %g", pstat_p->min);
	printf("\naverage     m1= %g", pstat_p->m1);
	printf("\nsq.average  m2= %g", pstat_p->m2);
	printf("\ndispersion   d= %g", pstat_p->d1);
	printf("\ndispersion  d0= %g", pstat_p->d2);
	printf("\nsigma        s= %g", pstat_p->s1);
	printf("\nsigma       s0= %g", pstat_p->s2);
	printf("\nasymmetry    a= %g", pstat_p->a1);
	printf("\nexcess       e= %g", pstat_p->e);
	printf("\ncent.moment m3= %g", pstat_p->k);
	printf("\ncent.moment m4= %g", pstat_p->l);
	if (pstat_p->is_normal)
		printf("\nnormal distribution!");
	printf("\n\n");
}

//------------------------------------------------------------------------------
// global function prototypes
//------------------------------------------------------------------------------

//============================================================================//
//            P R I V A T E   D E F I N I T I O N S                           //
//============================================================================//

//------------------------------------------------------------------------------
// const defines
//------------------------------------------------------------------------------

//------------------------------------------------------------------------------
// local types
//------------------------------------------------------------------------------

//------------------------------------------------------------------------------
// local vars
//------------------------------------------------------------------------------

//============================================================================//
//            P R I V A T E   F U N C T I O N S                               //
//============================================================================//
/**
 * @name Private Functions
 * @{
 */

/// @}

//============================================================================//
//            P U B L I C   F U N C T I O N S                                 //
//============================================================================//

int
main(void)
{
	statistic_t stat;

	statistic_clear(&stat);

	printf("\n Array statistic v.0.2");
	printf("\n g(o) - statistic calculation");
	printf("\n d(elete) - delete wrong value");
	printf("\n c(lear) - delete all values");
	printf("\n e(xit) - exit");
	printf("\n");

	for (;;) {
		char buffer[200];
		char str1[100];
		char str2[100];

		buffer[0] = 0;
		str1[0] = 0;
		str2[0] = 0;

		printf("[%d]> ", stat.n + 1);
		gets((char *)buffer);
		sscanf((char *)buffer, "%s %s", str1, str2);

		if (str1[0] == 'e') {
			break;
		}

		if (str1[0] == 'g') {
			statistic_calc(&stat);
			statistic_print(&stat);
			continue;
		}

		if (str1[0] == 'c') {
			statistic_clear(&stat);
			continue;
		}

		if (str1[0] == 'd') {
			double x = atof(str2);
			statistic_del(&stat, x);
			continue;
		}

		if (((str1[0] >= '0') && (str1[0] <= '9')) || (str1[0] == '.')) {
			double x = atof(str1);
			statistic_add(&stat, x);
		}
	}
	
	return 0;
}

