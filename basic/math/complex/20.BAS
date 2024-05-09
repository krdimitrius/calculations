10 ? "ÇõóàëãÖçàÖ F(Z)=AHT(Z)"
20 INPUT "RE Z,IM Z ";A,B
21 B=-B
25 C=SQR((A+1)*(A+1)+B*B)/2
30 E=ATN(2*A/(1-A*A-B*B))/2
35 F=LOG((A*A+(B+1)*(B+1))/(A*A+(B-1)*(B-1)))/4
40 B=E
45 A=-F
50 ? "RE F(Z)="A
55 ? "IM F(Z)="B
60 GOTO 20
