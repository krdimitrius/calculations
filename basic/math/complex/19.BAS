10 ? "ÇõóàëãÖçàÖ F(Z)=AHC(Z)"
20 INPUT "RE Z,IM Z ";A,B
25 C=SQR((A+1)*(A+1)+B*B)/2
30 D=SQR((A-1)*(A-1)+B*B)/2
35 E=C+D
40 F=C-D
45 B=PI/2-ATN(F/SQR(1-F*F))
50 A=LOG(E+SQR(E*E-1))
55 ? "RE F(Z)=+-"A
60 ? "IM F(Z)=+-"B
65 GOTO 20
