#include "apaf.h"

int apaf17(void)
{
	float F, C, Q, C1, C3, C4, C8, R0, R1, R2, R3, R4, R6, R7, R8;

	system("cls");

	printf("€‘—…’ ”ˆ‹œ’€ Ž‹Ž‘Ž-Ž“‘Š€ž™…ƒŽ ‚›‘ŽŠŽ„ŽŽ’ŽƒŽ\n");
	printf(" *---------------------------------------*\n");
	printf(" |        *----------------*             |\n");
	printf(" |        |    Ž“     ‘3   |         Ž“  |\n");
	printf(" |   R1   | -----     ||   |       ----- |\n");
	printf(" *-|====|-*-|-  | *---||---*-------|-  | |\n");
	printf(" |          |   |-*   ||           |   |-*-->\n");
	printf(" *-|====|-*-|+  | |              *-|+  |\n");
	printf("     R2   | |---| *-|====|-*---*-* |---|\n");
	printf("          -           R4   |   |\n");
	printf("      R6 | |               -   |\n");
	printf("         | |           R7 | | === C8\n");
	printf("          -               | |  |\n");
	printf("          |                -   |\n");
	printf("         ---               |  ---\n");
	printf(" <-------------------------*\n");

	while (1) {
		printf("F (<0 - ¢ëå®¤)? ");
		scanf("%f", &F);
		if (F < 0)
			break;

		printf("QP ? ");
		scanf("%f", &Q);
		printf("C1 ? ");
		scanf("%f", &C);

		R0 = 1 / (2 * PI * F * C);     
		
		printf("Ž’ˆŒ€‹œŽ… ‡€—…ˆ… …‡ˆ‘’Ž€ „‹Ÿ ˆ‡ŠŽƒŽ ‡€—…ˆŸ “— R0=%f", R0);
		printf("‚‚…„ˆ’… R8 ŽŒˆ€‹œŽ… ‡€—…ˆ… R0 ");
		scanf("%f", &R8);
		
		C3 = C;
		C8 = C;
		R1 = R8;
		R2 = R8;
		R6 = R8;
		R7 = Q * R0;
		R4 = (R0 * R0) / R8;

		printf("……„€’Ž—€Ÿ ”“Š–ˆŸ ˆŒ……’ ‚ˆ„:\n");
		printf("T(S)=K*(WP/Q)*S/(S^2+(WP/Q)*S+WP^2)\n");
		printf(" áâà®©ª :Fp-R4,Qp-R7\n");
		
		printf("…‡“‹œ’€’› €‘—…’€:\n");
		printf("R1=%f R2=%f R4=%f R6=%f\n", R1, R2, R4, R6);
		printf("R7=%f C3=%f C8=%f\n\n", R7, C3, C8);

	}

	return 0;
}

