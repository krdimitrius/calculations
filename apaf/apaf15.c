#include "apaf.h"

int apaf15(void)
{
	float F0, F1, K, K0, K1, H, H1, H2, Q, P, P1, B, B1, C, C1, C2, C3, C4, C8, C9, R, R0, R1, R2, R3, R4, R5, R6, R7, R8, R9, D, M, N, G, X, J;

	system("cls");

	printf("€‘—…’ ”‹’€ ‹-‡€ƒ —/‚— ‘ 0 ……„€— Q ‘…„……\n");
	printf("                    *-|====|--*-|====|-*\n");
	printf("                    |   R9    |   R10  |\n");
	printf("                   ---        |        |\n");
	printf("                              |   “   |\n");
	printf("        R5        R6          | -----  |\n");
	printf("     *-|====|--*-|====|-*     *-|-  |  |\n");
	printf("     |         |        |       |   |--*-->\n");
	printf("<----*  C1     |  C2    *-*---*-|+  |  |\n");
	printf("     |  ||     |  ||    | |   | |---|  |\n");
	printf("     *--||-*---|--||----* |   -        |\n");
	printf("        || |   |  ||      |  | | R8    |\n");
	printf("           -   |     C4  === | |       |\n");
	printf("       R7 | | === C3      |   -        |\n");
	printf("          | |  |          |   |        |\n");
	printf("           -   |         --- ---       |\n");
	printf("           |   |                       |\n");
	printf("           *---*-----------------------*\n");

	while (1) {
		printf("FZ (<0 - Άλε®¤)? ");
		scanf("%f", &F0);
		if (F0 < 0)
			break;

		printf("FP ? ");
		scanf("%f", &F1);

		if ((F1 - F0) == 0) {
			printf("‹‘€ ‡€„…†‚€ ’‘“’‘’‚“…’\n");
		    continue;
		} 

		printf("QP ? ");
		scanf("%f", &Q);
		printf("C1 ? ");
		scanf("%f", &C1);
		printf("C2 ? ");
		scanf("%f", &C2);
		printf("C3 ? ");
		scanf("%f", &C3);
		printf("C4 ? ");
		scanf("%f", &C4);
		printf("R9 ? ");
		scanf("%f", &R9);

		G = 1 / (2 * sqrt((1 + C2 / C1) * (1 + C2 / C3)));
		R5 = 1 / (4 * PI * F0 * G * (C2 + C3));
		C = C1 * C2 / (C1 + C2);
		H1 = 1 + C4 / C;
		H2 = 1 + C2 / C1;
		R6 = H2 / R5 / pow((2 * PI * F0), 2) / C2 / C3;
		B = R5 + R6;
		R7 = 1 / pow((2 * PI * F0), 2) / C1 / C2 / B;
		H = H1 * pow((2 * PI * F1), 2) / pow((2 * PI * F0), 2) - 1;
		if (H < 0) {
			printf("C4>=((F0^2)/(F1^2)-1)*C\n");
			R8 = 1E37;
		}
		else if (H == 0) {
			R8 = 1E37;
		}
		else {
			R8 = B / H;
		}

		if (R9 == 0)
			R9 = 1E4;
		N = 2 * PI * F0;
		M = 2 * PI * F1;
		R0 = R9 * G * (1 / (R8 * C * N) + B * C4 * N - (H1 * M / N) / Q);
		B1 = (2 * PI * F1) / (2 * PI * F0);
		X = Q * pow((1 + R0 / R9), 2) * (sqrt(R5 * C3 / R6 / C) + sqrt(B * C2 / R7 / C1)) / H1 / B1;
		K = (1 + R0 / R9) / H1;

		printf("……„€’—€ ”“– ……’ ‚’„:\n");
		printf("T(S)=K*(S^2+WZ^2)/(S^2+(WP/Q)*S+WP^2)\n");
		printf("ΰ¨¬¥η ­¨¥:Ά £ΰ δ¥ R8 Ά¬¥αβ® 1…37 η¨β βμ 1…90\n");
		printf(" αβΰ®©ª :Fz-R5,R6,R7(¨β¥ΰ β¨Ά­®);Fr-R8;Qp-R10\n");

		printf("…‡“‹’€’› €‘—…’€:\n");

		printf("R5=%f R6=%f R7=%f\n", R5, R6, R7);
		printf("R8=%f R10=%f\n", R8, R0);
		printf("K=%f “—=%f\n\n", K, X);
	}

	return 0;
}

