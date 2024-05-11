#include "apaf.h"

int apaf11(void)
{
	float F, Q, P, P1, C1, C3, C4, C8, C9, R1, R2, R4, R5, R6, K, X;
	int A;

	system("cls");

	printf("€‘—…’ ”‹’€ ‚— ‘…„…„’ƒ\n");
	printf("        *----------------------*\n");
	printf("        |                      |\n");
	printf("        -                      |\n");
	printf("       | | R2                  |\n");
	printf("       | |                     |\n");
	printf("  C11   -     C3        “     |\n");
	printf("   ||   |     ||       -----   |\n");
	printf("<--||---*-----||--*----|+  |   |\n");
	printf("   ||   |     ||  |    |   |---*--->\n");
	printf("        |         |  *-|-  |   |\n");
	printf("  C12  ===        -  | |---|   |\n");
	printf("        |    R4  | | |         |\n");
	printf("        |        | | *-|====|--*\n");
	printf("        |         -  |   R6  \n");
	printf("        |         |  -\n");
	printf("       ---       ---| | R5\n");
	printf("                    | |\n");
	printf("                     -\n");
	printf("                     |\n");
	printf("                    ---\n");

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
		printf("C3 ? ");
		scanf("%f", &C3);
		printf("R5 ? ");
		scanf("%f", &R5);

		C1 = C8 + C9;
		P1 = C1 / C3 / (4 * Q * Q) * pow((sqrt(1 + 12 * Q * Q * (1 + (C3 / C1))) - 1), 2);

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

			R2 = 1 / (2 * PI * F * sqrt(P * C1 * C3));
			R4 = P * R2;
			if (R5 == 0)
				R5 = 1E4;

			R6 = R5 * ((1 / P) * (1 + (C1 / C3)) - ((sqrt(C1 / P / C3)) / Q));
			K = (C8 / C1) * (1 + (R6 / R5));
			X = Q * pow((1 + (R6 / R5)), 2) * sqrt(P * C3 / C1);

			printf("……„€’—€ ”“– ……’ ‚„:\n");
			printf("T(S)=K*S^2/(S^2+(WP/Q)*S+WP^2)\n");
			printf(" αβΰ®©ª :Fp-R2,R4;Qp-R6\n");

			printf("…‡“‹’€’› €‘—…’€:\n");
			printf("R2=%f R4=%f R6=%f\n", R2, R4, R6);
			printf("K=%f “—=%f P=%f\n\n", K, X, P);
		}
	}

	return 0;
}

