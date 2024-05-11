#include "apaf.h"

int apaf4(void)
{
	float F, Q, P, C1, C3, C8, C9, R2, R4, K, X;

	system("cls");
	
	printf("€‘—…’ ”‹’€ ‚— ‡„’ƒ \n");
	printf("        *---------------*\n");
	printf("        |               |\n");
	printf("        -               |\n");
	printf("       | | R2           |\n");
	printf("       | |              |\n");
	printf("        -               |\n");
	printf("   C11  |   C3      “  |\n");
	printf("    ||  |   ||     ----- |\n");
	printf(" <--||--*---||-*---|+  | |\n");
	printf("    ||  |   || |   |   |-*-->\n");
	printf("        |      - *-|-  | |\n");
	printf("   C12 === R4 | || |---| |\n");
	printf("        |     | ||       |\n");
	printf("        |      - *-------*\n");
	printf("        |      |\n");
	printf("       ---    ---\n");

	while (1) {
		printf("FP (<0 - Άλε®¤)? ");
		scanf("%f", &F);
		if (F < 0)
			break;

		printf("QP ? ");
		scanf("%f", &Q);
		printf("C3 ? ");
		scanf("%f", &C3);
		printf("C11 ? ");
		scanf("%f", &C8);
		printf("C12 ? ");
		scanf("%f", &C9);
	
		C1 = C8 + C9;
		P = Q * Q * (2 + (C3 / C1) + (C1 / C3));
		R2 = 1 / (2 * PI * F * sqrt(P * C1 * C3));
		R4 = P * R2;
		X = Q * sqrt(P * C3 / C1);
		K = C8 / C1;
		printf("……„€’—€ ”“– ……’ ‚„:\n");
		printf("T(S)=K*(S^2)/(S^2+(WP/Q)*S+WP^2)\n");
		printf("…‡“‹’€’› €‘—…’€:\n");
		printf("R2=%f R4=%f K=%f “—=%f\n\n", R2, R4, K, X);
	}

	return 0;
}

