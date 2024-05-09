10 ? "ÇõóàëãÖçàÖ F(Z)=SIN(Z)"
20 INPUT "RE Z,IM Z ";A,B
30 E=SIN(A)*(EXP(B)+EXP(-B))/2
35 F=COS(A)*(EXP(B)-EXP(-B))/2
40 A=E
45 B=F
50 ? "RE F(Z)="A
55 ? "IM               F(Z)="B
60 GOTO 20
