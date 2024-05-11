#include "apaf.h"

int apaf20(void)
{
	float F, C, Q, C1, C3, C4, C7, C8, R0, R1, R2, R3, R4, R5, R6, R7, R8, R9;

	system("cls");

	printf("€‘—…’ ”‹œ’€ Ž‹Ž‘Ž-‡€ƒ€†„€ž™…ƒŽ ‚›‘ŽŠŽ„ŽŽ’ŽƒŽ\n");
	printf(" *-------------------------------------------------*\n");
	printf(" |        *-----------------*                      |\n");
	printf(" |        |  Ž“        ‘3   |                 Ž“   |\n");
	printf(" |   R1   | -----      ||   |                ----- |\n");
	printf(" *-|====|-*-|-  | *----||---*----------------|-  | |\n");
	printf(" |          |   |-*    ||                    |   |-*-->\n");
	printf(" *-|====|-*-|+  | |                        *-|+  |\n");
	printf("     R2   | |---| *-|====|-*---*-------*---* |---|\n");
	printf("          -           R4   |   |       |\n");
	printf("      R5 | |               |   -       -\n");
	printf("         | |           C7 === | | R7  | | R8\n");
	printf("          -                |  | |     | |\n");
	printf("          |                |   -       -\n");
	printf("          |                |   |       |\n");
	printf(" <--------*----------------*---*      ---\n");

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
		printf("‚‚…„ˆ’… R9 ŽŒˆ€‹œŽ… ‡€—…ˆ… R0:");
		scanf("%f", &R9);

		C3 = C;
		C7 = C;
		R1 = R9;
		R2 = R9;
		R5 = R9;
		R7 = 2 * Q * R0;
		R8 = 2 * Q * R0;
		R4 = (R0 * R0) / R9;

		printf("……„€’Ž—€Ÿ ”“Š–ˆŸ ˆŒ……’ ‚ˆ„:\n");
		printf("T(S)=(S^2+WP^2)/(S^2+(WP/Q)*S+WP^2)\n");
		printf(" áâà®©ª :Fp-R4,/T(Fp)/=0,Qp-R7,R8(¨â¥à â¨¢­®)\n");

		printf("…‡“‹œ’€’› €‘—…’€:\n");
		printf("R1=%f R2=%f R4=%f R5=%f\n", R1, R2, R4, R5);
		printf("R7=%f R8=%f C3=%f C7=%f\n\n", R7, R8, C3, C7);

	}

	return 0;
}

