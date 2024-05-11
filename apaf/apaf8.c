#include "apaf.h"

int apaf8(void)
{
	float F, Q, P, P1, C2, C4, R1, R3, R5, R6, R8, R9, K0, K1, K2, X;
	int A;

	system("cls");
	
	printf("€‘—…’ ”‹’€ — ‘…„…„’ƒ \n");
	printf("            *-----------------------*\n");
	printf("            |                       |\n");
	printf("        C2 ===                      |\n");
	printf("            |                 “    |\n");
	printf("     R11    |     R3        -----   |\n");
	printf(" <-|====|---*---|====|-*----|+  |   |\n");
	printf("            |          |    |   |---*--->\n");
	printf("            -          |  *-|-  |   |\n");
	printf("       R12 | |     C4 === | |---|   |\n");
	printf("           | |         |  |         |\n");
	printf("            -          |  *-|====|--*\n");
	printf("            |          |  |   R6\n");
	printf("           ---        --- -\n");
	printf("                         | | R5\n");
	printf("                         | |\n");
	printf("                          -\n");
	printf("                          |\n");
	printf("                         ---\n");

	while (1) {
		printf("FP (<0 - Άλε®¤)? ");
		scanf("%f", &F);
		if (F < 0)
			break;

		printf("QP ? ");
		scanf("%f", &Q);
		printf("C2 ? ");
		scanf("%f", &C2);
		printf("C4 ? ");
		scanf("%f", &C4);
		printf("R5 ? ");
		scanf("%f", &R5);

		P1 = ((C2 / C4) / (36 * Q * Q)) * pow((sqrt(1 + 12 * Q * Q * (1 + (C4 / C2))) + 1), 2);
		printf("„‹ ’€‹ƒ “— =%f\n", P1);
 
		printf("‚‚…„’… „ 0,…‘‹ =®―β ‹ 1, Ά ―ΰ®β¨Ά­®¬ α«γη ¥:");
		scanf("%d", &A);

		while(1) {
			if (A == 0) {
				P = P1;
				A = 1;  
			}
			else {
				printf("P (P <= 0 - Άλε®¤)? ");
				scanf("%f", &P);
				if (P <= 0)
					break;
			}

			R1 = 1/(2*PI*F*sqrt(P*C2*C4));
			R3 = P * R1;
			if (R5 == 0)
				R5 = 10000;
			R6 = R5 * (((C4 / C2) * (1 + P)) - (sqrt(P * (C4 / C2)) * (1 / Q)));
			K0 = 1 + (R6 / R5);
			X = Q * K0 * K0 * sqrt(C2 / P / C4);
			printf("KBX ? ");
			scanf("%f", &K1);
			if (K1 == 0) {
				R8 = R1;
				R9 = 1E+37;
				K2 = K0;
			}
			else if ((K0 - K1) > 0) {
				K2 = K1;
				R8 = (K0 / K1) * R1;
				R9 = (K0 / (K0 - K1)) * R1;
			}
			printf("……„€’—€ ”†– ……’ ‚„:\n");
			printf("T(S)=K*(WP^2)/(S^2+(WP/Q)*S+WP^2)\n");
			printf(" αβΰ®©ª :Fp-R3,Qp-R6\n");
			printf("…‡“‹’€’› €‘—…’€:\n");
			printf("ΰ¨¬¥η ­¨¥:Ά £ΰ δ¥ R12 Ά¬¥αβ® 1E37 η¨β βμ: 1…90\n\n");
			printf("R11=%f R12=%f R3=%f R6=%f\n", R8, R9, R3, R6);
			printf("K=%f “—=%f P=%f\n\n", K2, X, P);
		}
	}

	return 0;
}
