#include "apaf.h"

int apaf22(void)
{
	float F, C, Q, C1, C2, C3, C4, C6, C7, C8, R0, R1, R2, R3, R4, R5, R6, R7, R8, R9, K1, K2, K3;

	system("cls");

	printf("”‹’ “‚…‘€‹›‰.‘•…€ 1\n");
	printf("              R3\n");
	printf("          *-|====|-----------------------------*\n");
	printf("          |   R4              || C6            |\n");
	printf("          *-|====|-*       *--||---*           |\n");
	printf("          |   “   |       |  ||   |           |\n");
	printf("          | -----  |       |  “   |           |\n");
	printf("          *-|-  |  |   R5  | ----- |           |\n");
	printf("    R1      |   |--*-|====|*-|-  | |           |\n");
	printf("<-|====|--*-|+  |  |         |   |-*--*        |\n");
	printf("          | |---|  |       *-|+  | |  |        |\n");
	printf("          -        *->     | |---| |  |        |\n");
	printf("         | | R2            |       |  |        |\n");
	printf("         | |              ---      |  |        |\n");
	printf("          -                        |  |        |\n");
	printf("          |                        |  |        |\n");
	printf("          *------------------------*--|--------|-->\n");
	printf("                                      |        |\n");
	printf("          *---------------------------*        |\n");
	printf("          |           C8  *--------------------*\n");
	printf("          |           ||  |\n");
	printf("          |       *---||--*\n");
	printf("          |       |   ||  |\n");
	printf("          |       |   “  |\n");
	printf("          |       | ----- |\n");
	printf("          *-|===|-*-|-  | |\n");
	printf("              R7    |   |-*-->\n");
	printf("                  *-|+  |\n");
	printf("                  | |---|\n");
	printf("                  |\n");
	printf("                 ---\n");

	while (1) {
		printf("F (<0 - Άλε®¤)? ");
		scanf("%f", &F);
		if (F < 0)
			break;

		printf("QP ? ");
		scanf("%f", &Q);
		printf("C1 ? ");
		scanf("%f", &C);

		R0 = 1 / (2 * PI * F * C);

		printf("’€‹… ‡€—…… …‡‘’€ „‹ ‡ƒ ‡€—… “— R0=%f", R0);
		printf("‚‚…„’… R9 €‹… ‡€—…… R0:");
		scanf("%f", &R9);

		R1 = R9;
		R3 = R9;
		R5 = R9;
		R7 = R9;
		C6 = C;
		C8 = C;
		R4 = R9 * pow((R9 / R0), 2);
		R2 = R9 * (Q * ((1 + R4 / R9) / sqrt(R4 / R9)) - 1);
		K1 = (1 + R4 / R9) / (R9 / R2 + 1);
		K2 = R2 / R9;
		K3 = K1 * R9 / R4;

		printf("……„€’—›… ”“– ……’ ‚„:\n");
		printf("’‚—(S)=‚—*(S^2/(S^2+(WP/Q)*S+WP^2))\n");
		printf("’(S)=-*((WP/Q)*S/(S^2+(WP/Q)*S+WP^2))\n");
		printf("’—(S)=—*(WP^2/(S^2+(WP/Q)*S+WP^2))\n");
		printf(" αβΰ®©ª :Fp-R4,Qp-R2\n");

		printf("…‡“‹’€’› €‘—…’€:\n");
		printf("R1=%f R2=%f R4=%f R5=%f\n", R1, R2, R4, R5);
		printf("R7=%f C6=%f C8=%f\n", R7, C6, C8);
		printf("‚—=%f =%f —=%f\n\n", K1, K2, K3);

	}

	return 0;
}

