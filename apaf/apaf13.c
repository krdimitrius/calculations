#include "apaf.h"

int apaf13(void)
{
	float F, Q, P, P1, B, C1, C2, C3, C4, C8, C9, R, R1, R2, R3, R4, R5, R6, R7, H, K, X, Z;
	int A;

	system("cls");

	printf("€‘—…’ ”ˆ‹œ’€ Ž‹Ž‘Ž-‡€ƒ€†„€ž™…ƒŽ ‘…„…„ŽŽ’ŽƒŽ\n");
	printf("                      R7\n");
	printf("                  *-|====|-*\n");
	printf("                  |   Ž“   |\n");
	printf("          R6      |  ----- |\n");
	printf("    *---|====|----*--|-  | |\n");
	printf("    |                |   |-*-->\n");
	printf(" <--*---|====|----*--|+  | |\n");
	printf("    |     R1      |  |---| |\n");
	printf("    |  ||     ||  |        |\n");
	printf("    *--||--*--||--*        |\n");
	printf("       ||  |  ||           |\n");
	printf("       C2  |  C3     R5    |\n");
	printf("           *-------|====|--*\n");
	printf("           |\n");
	printf("           -\n");
	printf("          | | R4\n");
	printf("          | |\n");
	printf("           -\n");
	printf("           |\n");
	printf("          ---\n");

	while (1) {
		printf("FP (<0 - ¢ëå®¤)? ");
		scanf("%f", &F);
		if (F < 0)
			break;

		printf("QP ? ");
		scanf("%f", &Q);
		printf("C2 ? ");
		scanf("%f", &C8);
		printf("C3 ? ");
		scanf("%f", &C9);
		printf("R6 ? ");
		scanf("%f", &R6);

		P1 = 1 / (3 * (1 + C2 / C3));

		printf("€—.‡€—…ˆ… ‚‹ˆ‡ˆ MIN “— P=%f\n", P1);
		printf("‚‚…„ˆ’… ŠŽ„ 0,…‘‹ˆ =€— ˆ‹ˆ 1,…‘‹ˆ  „“ƒŽ…:");
		scanf("%d", &A);
		
		while(1) {
			if (A == 0) {
				P = P1;
				A = 1;  
			}
			else {
				printf("P (P <= 0 - ¢ëå®¤)? ");
				scanf("%f", &P);
				if (P <= 0)
					break;
			}

			R1 = 1 / (2 * PI * F * sqrt(C2 * C3 * P));
			R = P * R1;
			if (R6 == 0)
				R6 = 1E4;

			R7 = R6 * (1 + (C2 / C3)) * P;
			B = 1 - ((sqrt(P * C2 / C3)) / (Q * (1 + R7 / R6)));
			R5 = R / B;
			R4 = R / (1 - B);
			X = Q * B * pow((1 + (R7 / R6)), 2) * sqrt(C3 / P / C2);

			printf("……„€’Ž—€Ÿ ”“Š–ˆŸ ˆŒ……’ ‚ˆ„:\n");
			printf("T(S)=(S^2+WP^2)/(S^2+(WP/Q)*S+WP^2)\n");
			printf(" áâà®©ª :Fp-R1,/T(Fp)/=0 R4,Qp-R7\n");

			printf("…‡“‹œ’€’› €‘—…’€:\n");
			printf("R1=%f R4=%f R5=%f R7=%f\n", R1, R4, R5, R7);
			printf("“—=%f P=%f\n\n", X, P);
		}
	}

	return 0;
}
