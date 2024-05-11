#include "apaf.h"

int apaf5(void)
{
	float F, Q, H, C1, C2, C3, R4, R5, R6, R7, R8, R9;

	system("cls");
	
	printf("€‘—…’ ”‹’€ ‚‘…“‘€™…ƒ ‘ Q=+0.5\n");
	printf("‚€€’ 1\n");
	printf("                            R0\n");
	printf("                         *--|====|-*\n");
	printf("                         |         |\n");
	printf("                         |    “   |\n");
	printf("          R0             |  -----  |\n");
	printf("  *-----|====|-----------*--|-  |  |\n");
	printf("  |   || C1        || C2    |   |--*-->\n");
	printf("<-*---||----*------||----*--|+  |\n");
	printf("  |   ||    |      ||    |  |---|\n");
	printf("  |         |            |\n");
	printf("  *-|====|--|---*-|====|-*\n");
	printf("      R4    |   |   R5\n");
	printf("            -   |\n");
	printf("        R6 | | === C3\n");
	printf("           | |  |\n");
	printf("            -   |\n");
	printf("            |   |\n");
	printf("           --- ---\n");
	getchar();
	getchar();
	printf("€‘—…’ ”‹’€ ‚‘…“‘€™…ƒ ‘ Q=-0.5\n");
	printf("‚€€’ 2\n");
	printf("                            R0\n");
	printf("                       *--|====|--*\n");
	printf("                       |          |\n");
	printf("                       |    “    |\n");
	printf("          R0           |   -----  |\n");
	printf("  *-----|====|---------*---|-  |  |\n");
	printf("  |    R9         || C2    |   |--*-->\n");
	printf("<-*--|====|-*-----||---*---|+  |\n");
	printf("  |         |     ||   |   |---|\n");
	printf("  |  || C3  |          |\n");
	printf("  *--||-----|---*-|===|*\n");
	printf("     ||     |   |   R8\n");
	printf("            |   -\n");
	printf("        C1 === | | R7\n");
	printf("            |  | |\n");
	printf("            |   -\n");
	printf("            |   |\n");
	printf("           --- ---\n");

	while (1) {
		printf("FP (<0 - Άλε®¤)? ");
		scanf("%f", &F);
		if (F < 0)
			break;

		printf("QP ? ");
		scanf("%f", &Q);
	
		while (1) {
			printf("C1 ? ");
			scanf("%f", &C1);
			printf("C2 ? ");
			scanf("%f", &C2);
			printf("C3 ? ");
			scanf("%f", &C3);

			H = 1 - ((C1 + C2) * (C2 + C3) * 4 * Q * Q) / C1 / C3;
			if (H > 0)
				break;
			printf("”‹’ … …€‹‡“….‚‚…„’… ‚›… C1,C2,C3.\n");
			printf("C1=C3>=C2*2*Q/(1-2*Q)\n");
		}

		R4 = (1 + sqrt(H)) / (2 * 2 * PI * F * Q * (C2 + C3));
		R5 = (C1 + C2) / (R4 * (2 * PI * F) * (2 * PI * F) * C1 * C2 * C3);
		R6 = 1 / (pow(2 * PI * F, 2) * C1 * C2 * (R4 + R5));
		R7 = (1 - sqrt(H)) / (2 * 2 * PI * F * Q * (C2 + C3));
		R8 = (C1 + C2) / (R7 * pow(2 * PI * F, 2) * C1 * C2 * C3);
		R9 = 1 / (pow(2 * PI * F, 2) * C1 * C2 * (R7 + R8));

		printf("……„€’—€ ”“– „‹ ”‹’€ ‘ Q=+0.5\n");
		printf("T(S)=(S^2-(WP/Q)*S+WP^2)/(S^2+(WP/Q)*S+WP^2)\n");
		printf("……„€’—€ ”“– „‹ ”‹’€ ‘ Q=-0.5\n");
		printf("T(S)=-(S^2-(WP/Q)*S+WP^2)/(S^2+(WP/Q)*S+WP^2)\n");
		printf("…‡“‹’€’› €‘—…’€:\n");
		printf("R4=%f R5=%f R6=%f R7=%f R8=%f R9=%f \n\n", R4, R5, R6, R7, R8, R9);
	}

	return 0;
}


