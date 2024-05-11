#include "apaf.h"

int apaf21(void)
{
	float F0, F1, C, Q, C1, C2, C3, C4, C7, C8, R0, R1, R2, R3, R4, R5, R6, R7, R8, R9;

	system("cls");

	printf("€‘—…’ ”‹’€ —  ‚— ‘ 0 ……„€— ‚›‘„’ƒ\n");
	printf(" *----------------------------------------------*\n");
	printf(" |        *-------------------*            “   |\n");
	printf(" |        |  “               |          -----  |\n");
	printf(" |   R1   | ----- *-|====|----*----------|-  |  |\n");
	printf(" *-|====|-*-|-  | |   R3                 |   |--*-->\n");
	printf(" |    ||    |   |-*                    *-|+  |\n");
	printf(" *----||--*-|+  | |                    | |---|\n");
	printf("      ||  | |---| *-|====|-*------*----*\n");
	printf("      C2  -       |   R4   |      |\n");
	printf("         | | R5 <-*        |      -\n");
	printf("         | |           C7 === R8 | |\n");
	printf("          -                |     | |\n");
	printf("          |                |      -\n");
	printf("          |                |      |\n");
	printf(" <--------*----------------*     ---\n");

	while (1) {
		printf("FZ (<0 - Άλε®¤)? ");
		scanf("%f", &F0);
		if (F0 < 0)
			break;

		printf("FP ? ");
		scanf("%f", &F1);

		if (F0 == F1) {
			printf("‹‘€ ‡€„…†‚€ ’‘“’‘’‚“…’\n");
			continue;
		}

		printf("QP ? ");
		scanf("%f", &Q);
		printf("C1 ? ");
		scanf("%f", &C);

		R0 = 1 / (2 * PI * F1 * C);

		printf("’€‹… ‡€—…… …‡‘’€ „‹ ‡ƒ ‡€—… “— R0=%f", R0);
		printf("‚‚…„’… R9 €‹… ‡€—…… R0:");
		scanf("%f", &R9);

		R1 = R9;
		R3 = R9;
		C2 = C;
		C7 = C;
		R8 = Q * R0;

		if (((F0 * F0) / (F1 * F1) - 1) > 0) {
			R4 = R8 * (((F0 * F0) / (F1 * F1)) - 1);
			printf("—-„\n");
		}
		else {
			R4 = R8 * (1 - ((F0 * F0) / (F1 * F1)));
			printf("‚—-„\n");
		}

		R5 = (R0 * R0) / R4;

		printf("……„€’—€ ”“– ……’ ‚„:\n");
		printf("T(S)=(S^2+WZ^2)/(S^2+(WP/Q)*S+WP^2)\n");
		printf(" αβΰ®©ª :Fz-R4,Fp-R5,Qp-R8\n");

		printf("…‡“‹’€’› €‘—…’€:\n");
		printf("R1=%f R3=%f R4=%f R5=%f\n", R1, R3, R4, R5);
		printf("R8=%f C2=%f C7=%f\n\n", R8, C2, C7);

	}

	return 0;
}
