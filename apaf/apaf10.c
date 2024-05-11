#include "apaf.h"

int apaf10(void)
{
	float F, Q, P, P1, C1, C4, C8, C9, R1, R2, R3, R5, R6, K, X;
	int A;

	system("cls");
	
	printf("€‘—…’ ”‹’€ ‹.-“‘.‘…„…„’.‘ ‘-‚•„\n");
	printf("        *--------*---------*\n");
	printf("        |        |         |\n");
	printf("        -        |         |\n");
	printf("       | | R2    |         |\n");
	printf("  C11   -        |     “  |\n");
	printf("   ||   |  R3    |   ----- |\n");
	printf("<--||---*-|====|-*---|-  | |\n");
	printf("   ||   |            |   |-*-->\n");
	printf("        |          *-|+  | |\n");
	printf("       === C12     | |---| |\n");
	printf("        |          |       |\n");
	printf("       ---         *-|===|-*\n");
	printf("                   |  R6 \n");
	printf("                   -\n");
	printf("                  | | R5\n");
	printf("                  | |\n");
	printf("                   -\n");
	printf("                   |\n");
	printf("                  ---\n");

	while (1) {
		printf("FP (<0 - Άλε®¤)? ");
		scanf("%f", &F);
		if (F < 0)
			break;

		printf("QP ? ");
		scanf("%f", &Q);
		printf("C11 ? ");
		scanf("%f", &C8);
		printf("C12 ? ");
		scanf("%f", &C9);
		printf("C4 ? ");
		scanf("%f", &C4);
		printf("R6 ? ");
		scanf("%f", &R6);

		C1 = C8 + C9;
		P1 = C1 / C4 / (36 * Q * Q) * pow((sqrt(1 + 12 * Q * Q * (1 + (C4 / C1))) + 1), 2);

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

			R2 = 1 / (2 * PI * F * sqrt(P * C1 * C4));
			R3 = P * R2;
			if (R6 == 0)
				R6 = 1E4;
			R5 = R6 * ((C4 / C1) * (1 + P) - (1 / Q) * sqrt(P * C4 / C1));
			K = (C8 / C1) * (1 + (R5 / R6)) * Q * sqrt(C1 / P / C4);
			X = Q * pow((1 + (R5 / R6)), 2) * sqrt(C1 / P / C4);

			printf("……„€’—€ ”“– ……’ ‚„:\n");
			printf("T(S)=-K*(WP/Q)*S/(S^2+(WP/Q)*S+WP^2)\n");
			printf("…‡“‹’€’› €‘—…’€:\n");
			printf("R2=%f R3=%f R5=%f\n", R2, R3, R5);
			printf("K=%f “—=%f P=%f\n\n", K, X, P);
		}
	}

	return 0;
}
