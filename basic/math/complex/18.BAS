10 ? "ÇõóàëãÖçàÖ F(Z)=AHS(Z)"
20 INPUT "RE Z,IM Z ";A,B
30 C=SQR((A+1)*(A+1)+B*B)/2
35 D=SQR((A-1)*(A-1)+B*B)/2
40 E=C+D
45 F=C-D
50 B=ATN(F/SQR(1-F*F))
55 A=LOG(E+SQR(E*E-1))
60 ? "RE F(Z)="A
65 ? "IM F(Z)="B
70 GOTO 20
