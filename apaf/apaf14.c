#include "apaf.h"

int apaf14(void)
{
	float F0, F1, K, K0, K1, H, H1, H2, Q, P, P1, C1, C2, C3, C4, C8, C9, R1, R2, R3, R4, R5, R6, R7, R8, R9, D, M, N, G, X, J;

	system("cls");

	printf("€‘—…’ ”‹’€ —  ‚— ‘ 0 ……„€— ‘…„…„’ƒ\n");
	printf("               || C3\n");
	printf("             *-||--*-------------*\n");
	printf("             | ||  |             |\n");
	printf("             |     -             |\n");
	printf("             |    | | R5         |\n");
	printf("             |    | |            |\n");
	printf("             | C4  -        “   |\n");
	printf("      R1     | ||  |       ----- |\n");
	printf("   *-|====|--*-||--*-------|-  | |\n");
	printf("   |         | ||  |       |   |-*-->\n");
	printf("   |         -     -     *-|+  | |\n");
	printf("<--*     R2 | |   | | R6 | |---| |\n");
	printf("   |        | |   | |    |       |\n");
	printf("   |         -     -     |       |\n");
	printf("   |         |     |     |  R9   |\n");
	printf("   |        ---    *     *-|===|-*\n");
	printf("   |          ‚—-„/ —-„ |\n");
	printf("   *-------------*  *    |\n");
	printf("   |                |    |\n");
	printf("   |   R7          ---   |   R8\n");
	printf("   *-|====|--------------*-|====|--|\n");

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
		printf("C3 ? ");
		scanf("%f", &C3);
		printf("C4 ? ");
		scanf("%f", &C4);
		printf("R9 ? ");
		scanf("%f", &R9);

		while(1) {
			printf("KBX ? ");
			scanf("%f", &K1);
			printf("‚›…’…  ‚ ’…‚€‹… ’ 0.1 „ 0.3 (P <= 0 - Άλε®¤): ");
			scanf("%f", &P);

			X = (1 + sgn(F1 - F0)) / 2;
			D = 2 * PI * F1;
			N = 2 * P * Q;
			G = (C3 * D) / N * (sqrt(1 + 4 * Q * Q * P * (1 + C4 / C3)) - 1);
			M = 2 * PI * F0;
			K0 = (1 + P) / (1 + (1 + C4 / C3) * M * M * ((C3 * C3) / (G * G)));

			if (K1 == 0) {
				K = K0;
				R1 = 1 / G;
				R2 = 1E+37;
			}
			else {
				H = 1 - (K1 / K0);
				if (H > 0) {
					K = K1;
					R1 = K0 / G / K1;
					R2 = 1 / G / H;
				}
			}
	
			R6 = (G * (1 + P) * (1 - X / K)) / (C3 * C4 * (M * M - D * D));
			R5 = 1 / (C3 * C4 * D * D / G + P / R6);
			H1 = Q / D * (G / C3 + (C3 + C4) * (R5 + R6) / C3 / C4 / R5 / R6);
			H2 = 1 - G * (R5 + R6) / (D * D) / C3 / C4 / R5 / R6;
			J = (1 + P) / 2 * (fabs(1 - H1) + Q * fabs(H2));
			if (R9 == 0)
				R9 = 1E4;
			R7 = P * R9 / K;
			R8 = P * R9 / (1 - K);
	
			printf("……„€’—€ ”“– ……’ ‚„:\n");
			printf("T(S)=K*(S^2+WZ^2)/(S^2+(WP/Q)*S+WP^2)\n");
			printf("¨¬¥η ­¨¥:Ά £ΰ δ¥ R2 Ά¬¥αβ® 1…37 η¨β βμ 1…90\n");
	
			printf("…‡“‹’€’› €‘—…’€:\n");
	
			printf("R1=%f R2=%f R5=%f\n", R1, R2, R5);
			printf("R6=%f R7=%f R8=%f\n", R6, R7, R8);
			printf("K=%f “—=%f P=%f\n\n", K, J, P);
		}
	}

	return 0;
}

