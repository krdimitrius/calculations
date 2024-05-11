#include "apaf.h"

int apaf7(void)
{
	float F, Q, P, C2, C3, R1, R4, R5, R6, K, X;

	system("cls");
	
	printf("€‘—…’ ”‹’€ ‹‘-‡€ƒ€†„€™…ƒ ‡„’ƒ \n");
	printf("            *--------*----------*\n");
	printf("            |        |          |\n");
	printf("            |        -          |\n");
	printf("        C2 ===   R4 | |         |\n");
	printf("            |       | |         |\n");
	printf("            |    C3  -     “   |\n");
	printf("     R1     |    ||  |   -----  |\n");
	printf("<-*-|====|--*----||--*---|-  |  |\n");
	printf("  |              ||      |   |  |\n");
	printf("  *---|====|---------*---|+  |--*-->\n");
	printf("        R5           |   |---|\n");
	printf("                     -\n");
	printf("                R6  | |\n");
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
		printf("C2 ? ");
		scanf("%f", &C2);
		printf("C3 ? ");
		scanf("%f", &C3);
		printf("R6 ? ");
		scanf("%f", &R6);

		P = Q * Q * (2 + (C2 / C3) + (C3 / C2));
		R1 = 1 / (2 * PI * F * sqrt(P * C2 * C3));
		R4 = P * R1;
		X = Q * sqrt(P * C3 / C2);
		if (R6 == 0)
			R6 = 10000;
		R5 = R6 * (1 + (C2 / C3)) / P;
		K = R6 / (R5 + R6);

		printf("……„€’—€ ”†– ……’ ‚„:\n");
		printf("T(S)=K*(S^2+WP^2)/(S^2+(WP/Q)*S+WP^2)\n");
		printf("…‡“‹’€’› €‘—…’€:\n");
		printf("R1=%f R4=%f R5=%f K=%f “—=%f\n\n", R1, R4, R5, K, X);
	}

	return 0;
}
