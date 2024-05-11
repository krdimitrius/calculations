#include "apaf.h"

int apaf16(void)
{
	float F, C, Q, C1, C4, R0, R1, R2, R3, R6, R7, R8;

	system("cls");

	printf("������ ������� �� ����������������\n");
	printf(" *-----------------------------------*\n");
	printf(" |  C1                               |\n");
	printf(" |  ||                               |\n");
	printf(" *--||----*----------------*         |\n");
	printf(" |  ||    |   ��           |    ��   |\n");
	printf(" |    R1  | -----     R3   |   ----- |\n");
	printf(" *-|====|-*-|-  | *-|====|-*---|-  | |\n");
	printf(" |          |   |-*            |   |-*-->\n");
	printf(" *-|====|-*-|+  | |  ||      *-|+  |\n");
	printf("     R2   | |---| *--||----*-* |---|\n");
	printf("          -          ||    |\n");
	printf("      R6 | |         C4    -\n");
	printf("         | |           R7 | |\n");
	printf("          -               | |\n");
	printf("          |                -\n");
	printf("         ---               |\n");
	printf(" <-------------------------*\n");

	while (1) {
		printf("F (<0 - ��室)? ");
		scanf("%f", &F);
		if (F < 0)
			break;

		printf("QP ? ");
		scanf("%f", &Q);
		printf("C1 ? ");
		scanf("%f", &C);

		R0 = 1 / (2 * PI * F * C);

		printf("����������� �������� ��� ������� �������� ��� R0=%f\n", R0);
		printf("������� R8 ����������� �������� R0 ");
		scanf("%f", &R8);
		
		C1 = C;
		C4 = C;
		R2 = R8;
		R3 = R8;
		R6 = R8;
		R1 = Q * R0;
		R7 = (R0 * R0) / R8;

		printf("������������ ������� ����� ���:\n");
		printf("T(S)=K*WP^2/(S^2+(WP/Q)*S+WP^2)\n");
		printf("����ன��:Fp-R7,Qp-R1\n");
		
		printf("���������� �������:\n");
		printf("R1=%f R2=%f R3=%f R6=%f\n", R1, R2, R3, R6);
		printf("R7=%f C1=%f C4=%f\n\n", R7, C1, C4);

	}

	return 0;
}
