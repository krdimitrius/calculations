#include "apaf.h"

int apaf23(void)
{
	float F, C, Q, C1, C2, C3, C4, C6, C7, C8, R0, R1, R2, R3, R4, R5, R6, R7, R8, R9, K, K1, K2, K3;

	system("cls");

	printf("€‘—…’ ”‹’€ “‚…‘€‹ƒ.‘•…€ 2\n");
	printf("             R2\n");
	printf("         *-|====|--------------------------*\n");
	printf("         |   || C3                         |\n");
	printf("         *---||---*                        |\n");
	printf("         |   ||   |         C6             |\n");
	printf("         |   R4   |         ||             |\n");
	printf("         *-|====|-*       *-||----*        |\n");
	printf("         |   “   |       | ||    |        |\n");
	printf("   R1    | -----  |       |   “  |        |\n");
	printf("<-|====|-*-|-  |  |   R5  | ----- |        |\n");
	printf("           |   |--*-|===|-*-|-  | |        |\n");
	printf("         *-|+  |  |         |   |-*--------|--->\n");
	printf("         | |---|  *-->    *-|+  | |        |\n");
	printf("         |                | |---| |        |\n");
	printf("        ---               |       |        |\n");
	printf("                         ---      |        |\n");
	printf("                  *---------------*        |\n");
	printf("                  |           R8           |\n");
	printf("                  |       *-|====|---------*\n");
	printf("                  |       |   “           |\n");
	printf("                  |   R7  | -----          |\n");
	printf("                  *-|===|-*-|-  |          |\n");
	printf("                            |   |----------*-->\n");
	printf("                          *-|+  |\n");
	printf("                          | |---|\n");
	printf("                          |\n");
	printf("                         ---\n");

	while (1) {
		printf("FP (<0 - Άλε®¤)? ");
		scanf("%f", &F);
		if (F < 0)
			break;

		printf("QP ? ");
		scanf("%f", &Q);
		printf("C ? ");
		scanf("%f", &C);
		printf("K ? ");
		scanf("%f", &K);

		R0 = 1 / (2 * PI * F * C);

		printf("’€‹… ‡€—…… …‡‘’€ „‹ ‡ƒ ‡€—… “— R0=%f", R0);
		printf("‚‚…„’… R9 €‹… ‡€—…… R0:");
		scanf("%f", &R9);
  
		R2 = R9;
		R7 = R9;
		R8 = R9;
		C3 = C;
		C6 = C;
		R5 = (R0 * R0) / R9;
		R4 = Q * R0;

		printf("……„€’—›… ”“– …’ ‚„:\n");
		printf("’(_)=-*((WP/Q)*S/(S^2+(WP/Q)*S+WP^2))\n");
		printf("’—1(S)=—1*(WP^2/(S^2+(WP/Q)*S+WP^2))\n");
		printf("’—2(S)=-—2*(WP^2/(S^2+(WP/Q)*S+WP^2))\n");
		printf(" αβΰ®©ª :Fp-R5,Qp-R4,K-R1\n");

		printf("‚€€’ €:\n");
		R1 = R4 / K;
		K1 = K;
		K2 = R2 / R1;
		K3 = R2 / R1;

		printf("…‡“‹’€’› €‘—…’€:\n");
		printf("R1=%f R2=%f R4=%f R5=%f\n", R1, R2, R4, R5);
		printf("R7=%f R8=%f C3=%f C6=%f\n", R7, R8, C3, C6);
		printf("=%f —1=%f —2=%f\n\n", K1, K2, K3);

		printf("‚€€’ 2\n");
		R1 = R2 / K;
		K1 = R4 / R1;
		K2 = K;
		K3 = K;

		printf("…‡“‹’€’› €‘—…’€:\n");
		printf("R1=%f R2=%f R4=%f R5=%f\n", R1, R2, R4, R5);
		printf("R7=%f R8=%f C3=%f C6=%f\n", R7, R8, C3, C6);
		printf("=%f —1=%f —2=%f\n\n", K1, K2, K3);

	}

	return 0;
}


