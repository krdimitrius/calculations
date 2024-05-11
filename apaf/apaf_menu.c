#include <stdio.h>
#include <stdlib.h>

static void show_diagrams(void)
{
	system("cls");

	printf("�������������� ��������� ���� ��������: \n");
	getchar();
	printf(" \n");
	printf("�������������� \n");
	printf("    �,�� (�-����������� ��������) \n");
	printf("      |                      (QP=2) \n");
	printf("      |         ** \n");
	printf("  K   |*********| * \n");
	printf("      |         |  * \n");
	printf("      |         |   * \n");
	printf("      |---------|----*-------- LGT W \n");
	printf("              WM WP \n");
	printf("     F(W) (F-����) \n");
	printf("      | \n");
	printf("   0  |******** \n");
	printf("      |        * \n");
	printf(" -90  |---------* \n");
	printf("      |         | ******** \n");
	printf(" 180  |---------|------------- LGT W \n");
	printf("                WP \n");
	getchar();
	printf(" \n");
	printf("��������������� \n");
	printf("     �,�� (�-������������ ��������) \n");
	printf("      |                      (QP=2) \n");
	printf("      |      ** \n");
	printf("      |     *| * \n");
	printf("   K  |----*-|--******* \n");
	printf("      |   *  | \n");
	printf("      |  *   | \n");
	printf("      | *    | \n");
	printf("      |*-----|--------------- LGT W \n");
	printf("             WP \n");
	printf("     F(W) (F-����) \n");
	printf("      | \n");
	printf(" 180  |**** \n");
	printf("      |    * \n");
	printf("  90  |-----* \n");
	printf("      |     |* \n");
	printf("   0  |-----|-********------- LGT W \n");
	getchar();
	printf(" \n");
	printf("�������-������������ \n");
	printf("     �,�� (�-����������� ��������) \n");
	printf("      |                    (QP=10) \n");
	printf("   K  |-----* \n");
	printf("      |    *|* \n");
	printf("      |    *|* \n");
	printf("      |   *|||* \n");
	printf("      |  * |||  * \n");
	printf("      | *  |||    * \n");
	printf("      |*   |||      * \n");
	printf("      *----|||--------*--- LGT W \n");
	printf("         W1 WP W2 \n");
	printf("     F(W) (F-����) \n");
	printf("      | \n");
	printf("   90 |***** \n");
	printf("      |     * \n");
	printf("    0 |-----* \n");
	printf("      |     * \n");
	printf("  -90 |-----|-**********---- LGT W \n");
	printf("            WP \n");
	getchar();
	printf(" \n");
	printf("�������-������������ \n");
	printf("     �,�� (�-����������� ��������) \n");
	printf("      | \n");
	printf("   �  |********   ******** \n");
	printf("      |        * * \n");
	printf("      |         * \n");
	printf("�*QP/QZ---------* \n");
	printf("      |         | \n");
	printf("      |---------|---------- LGT W \n");
	printf("                WP \n");
	printf("     F(W) (F-����) \n");
	printf("   90 | \n");
	printf("      | \n");
	printf("      |           * \n");
	printf("      |          * * \n");
	printf("    0 |******   *   ****** \n");
	printf("      |      * *| \n");
	printf("      |       * | \n");
	printf("      |         | \n");
	printf("  -90 |---------|---------- LGT W \n");
	printf("                WP \n");
	getchar();
	printf(" \n");
	printf("��������������� \n");
	printf("     �,�� (�-����������� ��������) \n");
	printf("      | \n");
	printf("    K |***************** \n");
	printf("      | \n");
	printf("      | \n");
	printf("      |------------------- LGT W \n");
	printf("     F(W) (W-����) \n");
	printf("      | \n");
	printf("    0 |******** \n");
	printf("      |        * \n");
	printf(" -180 |---------* \n");
	printf("      |         |* \n");
	printf(" -360 |---------|-********-- LGT W \n");
	printf("              WP=WZ \n");
	getchar();
}

int menu(void)
{
	int num = 0;

	system("cls");

	while( 1 )
	{
		printf("�������� �������� ��� ���������������  \n");
		printf("�������������� �������� ��������. \n");
		printf("            ������ �������� \n");
		printf("    �������������� \n");
		printf("01.�������������� \n");
		printf("02.�������-������������ � ����������� ������ \n");
		printf("03.�������-������������ � ��������� ������ \n");
		printf("04.��������������� \n");
		printf("05.���������������-����������� 0.5 ������������� \n");
		printf("06.���������������-����������� 0.5 ������������� \n");
		printf("07.��������������� \n");
		printf("08.�������-������������\n");
		printf("    ��������������� \n");
		printf("09.�������������� \n");
		printf("10.�������-������������ � ����������� ������ \n");
		printf("11.�������-������������ � ��������� ������ \n");
		printf("12.��������������� \n");
		printf("13.��������������� \n");
		printf("14.�������-������������ \n");
		printf("15.�� � �� � ����� �������� \n");
		printf("16.�������-������������ �� � �� � ����� �������� \n");
		printf("    ��������������� \n");
		printf("17.�������������� \n");
		printf("18.�������-������������ \n");
		printf("19.��������������� \n");
		printf("20.��������������� \n");
		printf("21.�������-������������ \n");
		printf("21.�� � �� � ����� �������� \n");
		printf("22.�������������.����� 1 \n");
		printf("23.�������������.����� 2 \n");
		printf("\n ������� ����� ������� (0-�����, <0-����� �������������):");
		scanf("%2d", &num);
		if (num < 0) {
			show_diagrams();
			continue;
		}
		if (num <= 23)
			break;
	}
	return num;
}

