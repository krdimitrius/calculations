#include "apaf.h"

int apaf3(void)
{
	float F, Q, C1, C4, C8, C9, A, P, X, R2, R3, K;

	system("cls");

	printf("€‘—…’ ”‹’€ ‹.-“‘.‘ ‘ ‚•„  €‹› Q\n");
	printf("        *----------*--------*\n");
	printf("        |          |        |\n");
	printf("        -          |        |\n");
	printf("       | | R2      |        |\n");
	printf("   C11 | |        === C4    |\n");
	printf("        -          |     “ |\n");
	printf("    ||  |     R3   |  ----- |\n");
	printf(" <--||--*--|====|--*--|-  | |\n");
	printf("    ||  |             |   |-*-->\n");
	printf("        |           *-|+  |\n");
	printf("       === C12      | |---|\n");
	printf("        |           |\n");
	printf("       ---         ---\n");
	
	while (1) {
		printf("FP (<0 - Άλε®¤)? ");
		scanf("%f", &F);
		if (F < 0)
			break;

		printf("QP ? ");
		scanf("%f", &Q);
		while (1) {
			printf("C4 ? ");
			scanf("%f", &C4);
			printf("C11 ? ");
			scanf("%f", &C8);
			printf("C12 ? ");
			scanf("%f", &C9);
			if ((C8 + C9) > (4 * Q * Q * C4))
				break;
			printf("”‹’ … …€‹‡“….‚‚…„’… ‚›… C4,C11,C12\n");
		}
		
		C1 = C8 + C9;
		A = (C1 / (2 * Q * Q * C4)) - 1;
		P = A + sqrt(A * A - 1);
		R2 = 1 / (2 * PI * F * sqrt(P * C1 * C4));
		R3 = P * R2;
		X = Q * sqrt(C1 / P / C4);
		K = (C8 / C1) * X;
		
		printf("……„€’—€ ”“– ……’ ‚„:\n");
		printf("T(S)=-K*((WP/Q)*S/(S^2+(WP/Q)*S+WP^2))\n");
		printf("…‡“‹’€’› €‘—…’€\n");
		printf("R2=%f R3=%f K=%f “—=%f\n\n", R2, R3, K, X);
	}

	return 0;
}
