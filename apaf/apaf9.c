#include "apaf.h"

int apaf9(void)
{
	float F, Q, P, P1, C2, C3, R1, R4, R5, R6, R8, R9, K0, K1, K2, X;
	int A;

	system("cls");
	
	printf("€‘—…’ ”‹’€ ‹.-“‘.‘…„…„’.‘ R-‚•„\n");
	printf("            *----------*------------*\n");
	printf("            |          |            |\n");
	printf("        C2 ===         -            |\n"); 
	printf("            |         | | R4        |\n");
	printf("            |         | |           |\n");
	printf("            |          -       “   |\n");
	printf("     R11    |   ||     |     -----  |\n");
	printf(" <--|====|--*---||-----*-----|-  |  |\n");
	printf("            |   ||           |   |--*--->\n");
	printf("            -   C3         *-|+  |  |\n");
	printf("       R12 | |             | |---|  |\n");
	printf("           | |             |        |\n");
	printf("            -              *-|====|-*\n");
	printf("            |              |   R6\n");
	printf("           ---             -\n");
	printf("                          | | R5\n");
	printf("                          | |\n");
	printf("                           -\n");
	printf("                           |\n");
	printf("                          ---\n");

	while (1) {
		printf("FP (<0 - Άλε®¤)? ");
		scanf("%f", &F);
		if (F < 0)
			break;

		printf("QP ? ");
		scanf("%f", &Q);
		printf("C2 ? ");
		scanf("%f", &C2);
		printf("C3 ? ");
		scanf("%f", &C3);
		printf("R6 ? ");
		scanf("%f", &R6);

		P1=C2/C3/(4*Q*Q)*pow((sqrt(1+12*Q*Q*(1+(C3/C2)))-1), 2);

		printf("„‹ ’€‹ƒ “— =%f\n", P1);
 
		printf("‚‚…„’… „ 0,…‘‹ =®―β ‹ 1, Ά ―ΰ®β¨Ά­®¬ α«γη ¥:");
		scanf("%d", &A);

		while(1) {
			if (A == 0) {
				P = P1;
				A = 1;  
			}
			else {
				printf("P (P <= 0 - Άλε®¤)? ");
				scanf("%f", &P);
				if (P <= 0)
					break;
			}

			R1=1/(2*PI*F*sqrt(P*C2*C3));
			R4=P*R1;
			if (R6 == 0)
				R6 = 1E4;
			R5=R6*((1/P)*(1+(C2/C3))-(sqrt(C2/P/C3))*(1/Q));
			K0=Q*(1+(R5/R6))*sqrt(P*C3/C2);
			X=(1+(R5/R6))*K0;
			printf("KBX ? ");
			scanf("%f", &K1);
			if (K1 == 0) {
				R8=R1;
				R9=1E37;
				K2=K0;
			}
			else if ((K0 - K1) > 0) {
				K2 = K1;
				R8=(K0/K1)*R1;
				R9=(K0/(K0-K1))*R1;
			}

			printf("……„€’—€ ”†– ……’ ‚„:\n");
			printf("T(S)=-K*(WP/Q)*S/(S^2+(WP/Q)*S+WP^2)\n");
			printf(" αβΰ®©ª :Fp-R4,Qp-R5\n");
			printf("…‡“‹’€’› €‘—…’€:\n");
			printf("ΰ¨¬¥η ­¨¥:Ά £ΰ δ¥ R12 Ά¬¥αβ® 1E37 η¨β βμ-1…90\n");
			printf("R11=%f R12=%f R4=%f R5=%f\n", R8, R9, R4, R5);
			printf("K=%f “—=%f P=%f\n\n", K2, X, P);
		}
	}

	return 0;
}
