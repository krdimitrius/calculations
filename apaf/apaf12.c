#include "apaf.h"

int apaf12(void)
{
	float F, Q, P, P1, B, C1, C2, C3, C4, C8, C9, R, R1, R2, R3, R4, R5, R6, R7, H, K, X, Z;
	int A;

	system("cls");
	
	printf("������ ������� ���������������� ����������������\n");
	printf("                       R7\n");
	printf("                   *-|====|-*\n");
	printf("                   |        |\n");
	printf("                   |   ��   |\n");
	printf("           R6      |  ----- |\n");
	printf("     *---|====|----*--|-  | |\n");
	printf("     |     R1         |   |-*--->\n");
	printf("     *---|====|----*--|+  | |\n");
	printf("     |             |  |---| |\n");
	printf("     |  ||     ||  |        |\n");
	printf("     *--||-*---||--*        |\n");
	printf("        || |   ||           |\n");
	printf("        C2 |   C3           |\n");
	printf("           *---------|====|-*\n");
	printf("           |           R5\n");
	printf("           -\n");
	printf("       R4 | |\n");
	printf("          | |\n");
	printf("           -\n");
	printf("           |\n");
	printf("          ---\n");

	while (1) {
		printf("FP (<0 - ��室)? ");
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

		X = C2 / C3;
		B = 6 * Q * Q * pow((1 + X), 2) / (2 * Q * Q * (1 + X) - X);
		P1 = (1 / B) * (sqrt(1 + ((B * B) / (3 * pow((1 + X), 2)))) - 1);

		printf("��� ������������ ��� �=%f\n", P1);
		printf("������� ��� 0,���� �=���� ��� 1, � ��⨢��� ��砥:");
		scanf("%d", &A);

		while(1) {
			if (A == 0) {
				P = P1;
				A = 1;  
			}
			else {
				printf("P (P <= 0 - ��室)? ");
				scanf("%f", &P);
				if (P <= 0)
					break;
			}

			R1 = 1 / (2 * PI * F * sqrt(C2 * C3 * P));
			R = P * R1;
			if (R6 == 0)
				R6 = 1E4;
			R7 = R6 * (P * (1 + (C2 / C3)) + (1 / Q) * sqrt(P * C2 / C3));
			H = 1 - (2 * (sqrt(P * C2 / C3)) / Q / (1 + (R7 / R6)));
			R5 = R / H;
			R4 = R / (1 - H);
			Z = Q * H * pow((1 + (R7 / R6)), 2) * sqrt(C3 / P / C2);

			printf("������������ ������� ����� ���:\n");
			printf("T(S)=(S^2-(WP/Q)*S+WP^2)/(S^2+(WP/Q)*S+WP^2)\n");

			printf("���������� �������:\n");
			printf("R1=%f R4=%f R5=%f R7=%f\n", R1, R4, R5, R7);
			printf("���=%f P=%f\n\n", Z, P);
		}
	}

	return 0;
}

