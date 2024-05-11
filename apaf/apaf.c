#include "apaf.h"

int sgn(float val)
{
    return (0 < val) - (val < 0);
}

int main() {
	int num;
	while(1) {
		num = menu();
		switch(num) {
		case 0:
			return 0;
		case 1:
			apaf1();
			break;
		case 2:
			apaf2();
			break;
		case 3:
			apaf3();
			break;
		case 4:
			apaf4();
			break;
		case 5:
			apaf5();
			break;
		case 6:
			apaf6();
			break;
		case 7:
			apaf7();
			break;
		case 8:
			apaf8();
			break;
		case 9:
			apaf9();
			break;
		case 10:
			apaf10();
			break;
		case 11:
			apaf11();
			break;
		case 12:
			apaf12();
			break;
		case 13:
			apaf13();
			break;
		case 14:
			apaf14();
			break;
		case 15:
			apaf15();
			break;
		case 16:
			apaf16();
			break;
		case 17:
			apaf17();
			break;
		case 18:
			apaf18();
			break;
		case 19:
			apaf19();
			break;
		case 20:
			apaf20();
			break;
		case 21:
			apaf21();
			break;
		case 22:
			apaf22();
			break;
		case 23:
			apaf23();
			break;
		default:
			break;
  		}
  	}
  	return 0;
}
