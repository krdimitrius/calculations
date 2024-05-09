10 ? "ÇõóàëãÖçàÖ F(Z)=HTN(Z)"
20 INPUT "RE Z,IM Z ";A,B
25 A=A*2
30 B=B*2
35 G=COS(B)+(EXP(A)+EXP(-A))/2
40 E=(EXP(A)-EXP(-A))/2/G
45 F=SIN(B)/G
50 ? "RE F(Z)="E
55 ? "IM F(Z)="F
60 GOTO 20
