10 ? "ÇõóàëãÖçàÖ F(Z)=ASN(Z)"
15 INPUT "RE Z,IM Z ";A,B
20 C=SQR((A+1)^2+B*B)/2
25 D=SQR((A-1)*(A-1)+B*B)/2
30 E=C+D
35 F=C-D
40 A=ATN(F/SQR(1-F*F))
45 B=LOG(E+SQR(E*E-1))
50 ? "RE F(Z)="A
55 ? "IM F(Z)="B
60 GOTO 15
