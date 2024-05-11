#include <stdio.h>
#include <conio.h>
#include <windows.h>

#define X_MAX  80
#define Y_MAX  24

#define cls()  system("cls")

/// Установка курсора консоли
static void 
locate(int X, int Y)
{
	HANDLE hConsole = GetStdHandle(STD_OUTPUT_HANDLE);
	COORD coord;
	coord.X = X;
	coord.Y = Y;
	SetConsoleCursorPosition(hConsole,coord);
}

int
main(void)
{
	char ch;
	int flag, flag2, K[X_MAX][Y_MAX], K1[X_MAX][Y_MAX], X, Y, XP, YP, XM, YM, S, R;
			
	cls();
	locate(0, 0);

	printf("      ИГРА - ИССЛЕДОВАНИЕ \n");
	printf("      (LIFE-ЖИЗНЬ(АНГЛ.))\n");
	printf(" *Д.А.Крысин*       *17.07.90* \n");
	printf(" Игра 'LIFE' (жизнь-англ.) одна из самых интересных \n");
	printf("математических игр. Придумал ее американский математик Конуэй.\n");
	printf("Свое название она получила не случайно. Законы и правила, \n");
	printf("которым она подчиняется, очень похожи на реальные процессы, \n");
	printf("происходящие при зарождении, развитии и гибели \n");
	printf("простейших микроорганизмов.\n\n");
	printf("Используемые клавиши: \n");
	printf("  вверх, вниз, влево, вправо - перемещение курсопа \n");
	printf("  пробел - изменение состояния \n");
	printf("  e - переход к редактированию \n");
	printf("  s - переход к эволюциям \n");
	printf("  n - новая игра \n");
	printf("  q - выход \n\n");
	printf("Нажмите любую клавишу \n");
	ch = getch();

	cls();
	
	S = 0;
	flag2 = 1; 
	while(flag2) {
		locate(0, 0);
		printf("ЗАДАЙТЕ КОНФИГУРАЦИЮ:            \n");
		X = 0;
		Y = 0;
		flag = 1;
		do {
			locate(X, Y+1);
	
			ch = getch();
			switch (ch) {
			case 72: // вверх
				if (Y > 0) 
					Y--;
				else
					Y = (Y_MAX-1);
				break;
			case 80: // вниз
				if (Y < (Y_MAX-1)) 
					Y++;
				else
					Y = 0;
				break;
			case 77: // вправо
				if (X < (X_MAX-1)) 
					X++;
				else
				    X = 0;
				break;
			case 75: // влево
				if (X > 0) 
					X--;
				else
				    X = (X_MAX-1);
				break;
			case ' ':
				if (K[X][Y] == 1) {
					K[X][Y] = 0;
					putchar(' '); 
				}
				else {
					K[X][Y] = 1;
					putchar('█');
				}
				break;
			case 's':
			case 'S':
			case 'ы':
			case 'Ы':
				flag = 0;
				break;
			case 'q':
			case 'Q':
			case 'й':
			case 'Й':
				flag = 0;
				flag2 = 0;
				break;
			case 'n':
			case 'N':
			case 'т':
			case 'Т':
				memset(&K[0][0], 0, sizeof(K));
				memset(&K1[0][0], 0, sizeof(K1));
				S = 0;
				R = 0;
				for (X = 0; X < X_MAX; X++) {
					for (Y = 0; Y < Y_MAX; Y++) {
						locate(X, Y+1);  
						putchar(' ');
					}
				}
				X = 0;
				Y = 0;
				break;
			default:
				break;
			}
		} while(flag); 
	
		flag = 1;
		while(flag && flag2) {
			for (X = 0; X < X_MAX; X++) {
				for (Y = 0; Y < Y_MAX; Y++) {
					if (X > 0)		
						XM = X - 1;
					else
						XM = X_MAX - 1;

					if (Y > 0)		
						YM = Y - 1;
					else
						YM = Y_MAX - 1;

					if (X < (X_MAX-1))
						XP = X + 1;
					else
						XP = 0;					

					if (Y < (Y_MAX-1))
						YP = Y + 1;
					else
						YP = 0;					
						
					R = K[X][YP]  + K[X][YM] + 
						K[XP][Y]  + K[XM][Y] +
						K[XP][YP] + K[XP][YM] +
						K[XM][YP] + K[XM][YM];						

					switch (R) {
					case 2:
                    	break;
					case 3:
						K1[X][Y] = 1;
						break;
					default:
						K1[X][Y] = 0;
						break;					
					}
				}
			}
					
			S++;
			R = 0;
			for (X = 0; X < X_MAX; X++) {
				locate(X, Y+1);
				for (Y = 0; Y < Y_MAX; Y++) {
					K[X][Y] = K1[X][Y];
					locate(X, Y+1);
					if (K[X][Y] == 1) {
						putchar('█');
						R++;
					}
					else {
						putchar(' ');
					}
				}
			}
	
			locate(0, 0);
			printf("ПОКОЛЕНИЕ %d, ЖИВЫХ КЛЕТОК %d      ", S, R);

			ch = getch();
			switch (ch) {
			case 'e':
			case 'E':
				flag = 0;
				break;
			case 'q':
			case 'Q':
				flag = 0;
				flag2 = 0;
				break;
			default:
				break;
			}

		}         
  	}
	locate(0, Y_MAX+1);
	return 0;
}
