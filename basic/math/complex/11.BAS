10 ? "ÇõóàëãÖçàÖ F(Z)=TAN(Z)"
20 INPUT "RE Z,IM Z ";A,B
25 A=A*2
30 B=B*2
35 G=COS(A)+(EXP(B)+EXP(-B))/2
40 E=SIN(A)/G
45 F=(EXP(B)-EXP(-B))/2/G
50 A=E
55 B=F
60 ? "RE F(Z)="A
65 ? "IM F(Z)="B
70 GOTO 20
