#include "apaf.h"

int apaf2(void)
{
	float F, Q, C2, C3, P, R1, R3, R4, R8, R9, K0, K1, K2;

	system("cls");

	printf("������ ������� ���.-�������.� R ������ � ����� Q \n");
	printf("            *-------*---------*\n");
	printf("            |       |         |\n");
	printf("            |       -         |\n");
	printf("        C2 ===     | | R4     |\n");
	printf("            |      | |        |\n");
	printf("            |       -    ��   |\n");
	printf("      R11   |  ||   |   ----- |\n");
	printf(" <--|====|--*--||---*---|+  | |\n");
	printf("            |    C3     |   |-*-->\n");
	printf("            -         *-|-  |\n");
	printf("           | |        | |---|\n");
	printf("       R12 | |        |\n");
	printf("            -         |\n");
	printf("            |         |\n");
	printf("           ---       ---\n");

	printf("FP ? ");
	scanf("%f", &F);
	printf("QP ? ");
	scanf("%f", &Q);
	printf("C2 ? ");
	scanf("%f", &C2);
	printf("C3 ? ");
	scanf("%f", &C3);

	P = Q * Q * (2 + (C2 / C3) + (C3 / C2));
	R1 = 1 / (2 * PI * F * sqrt(P * C2 * C3));
	R4 = P * R1;
	K0 = Q * Q * (1 + (C3 / C2));

	printf("������������ ������� ����� ���:\n");
	printf("T(S)=-K*((WP/Q)*S/(S^2+(WP/Q)*S+WP^2))\n");
	while(1) {
		printf("�BX (<0-��室) ? ");
		scanf("%f", &K1);

		if (K1 < 0)
			break;

		if ((K1 != 0) && (K0 > K1)) {
			K2 = K1;
			R8 = (K0 / K1) * R1;
			R9 = (K0 / (K0 - K1)) * R1;
		}
		else {
			R8 = R1;
			R9 = 1E+37;
			K2 = K0;
		}

		printf("���������� �������:\n");
		printf("R11=%f R12= %f R4=%f K=%f ���=%f\n", R8, R9, R4, K2, K0);
	}
	return 0;
}	

			



