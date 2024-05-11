#include "apaf.h"

int apaf1(void)
{
	float F, Q, C2, C4, A, P, R1, R3, X;

	system("cls");

	printf("€‘—…’ ”‹’€ — ‡„’ƒ \n");
	printf("            *--------------------*\n");
	printf("            |                    |\n");
	printf("        ‘2 ===               “  |\n");
	printf("            |   R3         ----- |\n");
	printf("  <-|====|--*-|====|--*----|+  | |\n");
	printf("      R11   |         |    |   |-*->\n");
	printf("            -         |  --|-  | |\n");
	printf("           | |    C4 === | |---| |\n");
	printf("       R12 | |        |  |       |\n");
	printf("            -         |  *-------*\n");
	printf("            |         |\n");
	printf("           ---       --- \n");
	while (1) {
		printf("FP ? ");
		scanf("%f", &F);
		printf("QP ? ");
		scanf("%f", &Q);
		printf("C2 ? ");
		scanf("%f", &C2);
		printf("C4 ? ");
		scanf("%f", &C4);
		if (C2 >= (4 * Q * Q * C4))
			break;
		printf("”‹’ … …€‹‡“….‚‚…„’… ‚›… ‘2  ‘4\n");
	}
	A = C2 / (2 * Q * Q * C4) - 1;
	P = A + sqrt(A * A - 1);
	R1 = 1 / (2 * PI * F * sqrt(P * C2 * C4));
	R3 = P * R1;
	X = Q * sqrt(C2 / P / C4);

	printf("……„€’—€ ”“– ……’ ‚„:\n");
	printf("’(S)=K*((WP^2)/(S^2+(WP/Q)*S+(WP^2)))\n");
	while (1) {
		float K1, K, R8, R9;
		printf("BX (<0-Άλε®¤) ? ");
		scanf("%f", &K1);
		if (K1 < 0)
			break;
		if ((K1 == 0) || ((1 - K1) <= 0)) {
			K = 1;
			R8 = R1;
			R9 = 1E+37;
		}
		else {
			K = K1;
			R8 = R1 / K;
			R9 = R1 / (1 - K);
		}
		printf("…‡“‹’€’› €‘—…’€:\n");
		printf("R11=%f R12=%f R3=%f K=%f “—=%f\n", R8, R9, R3, K, X);
	}
	return 0;
}


