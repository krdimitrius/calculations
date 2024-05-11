#include <stdio.h>
#include <stdlib.h>

static void show_diagrams(void)
{
	system("cls");

	printf("€‘‘—ˆ’›‚€’‘Ÿ ‘‹…„“™ˆ… ‚ˆ„› ”ˆ‹œ’‚: \n");
	getchar();
	printf(" \n");
	printf("ˆ‡Š—€‘’’›… \n");
	printf("    €,„ (€-Š””–ˆ…’ “‘ˆ‹…ˆŸ) \n");
	printf("      |                      (QP=2) \n");
	printf("      |         ** \n");
	printf("  K   |*********| * \n");
	printf("      |         |  * \n");
	printf("      |         |   * \n");
	printf("      |---------|----*-------- LGT W \n");
	printf("              WM WP \n");
	printf("     F(W) (F-”€‡€) \n");
	printf("      | \n");
	printf("   0  |******** \n");
	printf("      |        * \n");
	printf(" -90  |---------* \n");
	printf("      |         | ******** \n");
	printf(" 180  |---------|------------- LGT W \n");
	printf("                WP \n");
	getchar();
	printf(" \n");
	printf("‚›‘Š—€‘’’›… \n");
	printf("     €,„ (€-Š”””ˆ–ˆ…’ “‘ˆ‹…ˆŸ) \n");
	printf("      |                      (QP=2) \n");
	printf("      |      ** \n");
	printf("      |     *| * \n");
	printf("   K  |----*-|--******* \n");
	printf("      |   *  | \n");
	printf("      |  *   | \n");
	printf("      | *    | \n");
	printf("      |*-----|--------------- LGT W \n");
	printf("             WP \n");
	printf("     F(W) (F-”€‡€) \n");
	printf("      | \n");
	printf(" 180  |**** \n");
	printf("      |    * \n");
	printf("  90  |-----* \n");
	printf("      |     |* \n");
	printf("   0  |-----|-********------- LGT W \n");
	getchar();
	printf(" \n");
	printf("‹‘-“‘Š€™ˆ… \n");
	printf("     €,„ (€-Š””ˆ–ˆ…’ “‘ˆ‹…ˆŸ) \n");
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
	printf("     F(W) (F-”€‡€) \n");
	printf("      | \n");
	printf("   90 |***** \n");
	printf("      |     * \n");
	printf("    0 |-----* \n");
	printf("      |     * \n");
	printf("  -90 |-----|-**********---- LGT W \n");
	printf("            WP \n");
	getchar();
	printf(" \n");
	printf("‹‘-‡€ƒ€†„€™ˆ… \n");
	printf("     €,„ (€-Š””ˆ–ˆ…’ “‘ˆ‹…ˆŸ) \n");
	printf("      | \n");
	printf("   Š  |********   ******** \n");
	printf("      |        * * \n");
	printf("      |         * \n");
	printf("Š*QP/QZ---------* \n");
	printf("      |         | \n");
	printf("      |---------|---------- LGT W \n");
	printf("                WP \n");
	printf("     F(W) (F-”€‡€) \n");
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
	printf("‚‘…“‘Š€™ˆ… \n");
	printf("     €,„ (€-Š””ˆ–ˆ…’ “‘ˆ‹…ˆŸ) \n");
	printf("      | \n");
	printf("    K |***************** \n");
	printf("      | \n");
	printf("      | \n");
	printf("      |------------------- LGT W \n");
	printf("     F(W) (W-”€‡€) \n");
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
		printf("ŠŒ‹…Š‘ ƒ€ŒŒ „‹Ÿ €‚’Œ€’ˆ—…‘Šƒ  \n");
		printf("…Š’ˆ‚€ˆŸ €Š’ˆ‚›• ”ˆ‹œ’‚. \n");
		printf("            ‘ˆ‘Š ”ˆ‹œ’‚ \n");
		printf("    ˆ‡Š„’›… \n");
		printf("01.ˆ‡Š—€‘’’›‰ \n");
		printf("02.‹‘-“‘Š€™ˆ‰ ‘ …‡ˆ‘’ˆ‚›Œ ‚•„Œ \n");
		printf("03.‹‘-“‘Š€™ˆ‰ ‘ …ŒŠ‘’›Œ ‚•„Œ \n");
		printf("04.‚›‘Š—€‘’’›‰ \n");
		printf("05.‚‘…“‘Š€™ˆ‰-„’‘’œ 0.5 ‹†ˆ’…‹œ€Ÿ \n");
		printf("06.‚‘…“‘Š€™ˆ‰-„’‘’œ 0.5 ’ˆ–€’…‹œ€Ÿ \n");
		printf("07.‚‘…“‘Š€™ˆ‰ \n");
		printf("08.‹‘-‡€ƒ€†„€™ˆ‰\n");
		printf("    ‘…„…„’›… \n");
		printf("09.ˆ‡Š—€‘’’›‰ \n");
		printf("10.‹‘-“‘Š€™ˆ‰ ‘ …‡ˆ‘’ˆ‚›Œ ‚•„Œ \n");
		printf("11.‹‘-“‘Š€™ˆ‰ ‘ …ŒŠ‘’›Œ ‚•„Œ \n");
		printf("12.‚›‘Š—€‘’’›‰ \n");
		printf("13.‚‘…“‘Š€™ˆ‰ \n");
		printf("14.‹‘-‡€ƒ€†„€™ˆ‰ \n");
		printf("15.— ˆ ‚— ‘ “‹…Œ ……„€—ˆ \n");
		printf("16.‹‘-‡€ƒ€†„€™ˆ‰ — ˆ ‚— ‘ “‹…Œ ……„€—ˆ \n");
		printf("    ‚›‘Š„’›… \n");
		printf("17.ˆ‡Š—€‘’’›‰ \n");
		printf("18.‹‘-“‘Š€™ˆ‰ \n");
		printf("19.‚›‘Š—€‘’’›‰ \n");
		printf("20.‚‘…“‘Š€™ˆ‰ \n");
		printf("21.‹‘-‡€ƒ€†„€€™ˆ‰ \n");
		printf("21.— ˆ ‚— ‘ “‹…Œ ……„€—ˆ \n");
		printf("22.“ˆ‚…‘€‹œ›‰.‘•…Œ€ 1 \n");
		printf("23.“ˆ‚…‘€‹œ›‰.‘•…Œ€ 2 \n");
		printf("\n ‚‚…„ˆ’… Œ… ”ˆ‹œ’€ (0-‚›•„, <0-‚›‚„ •€€Š’…ˆ‘’ˆŠ):");
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

