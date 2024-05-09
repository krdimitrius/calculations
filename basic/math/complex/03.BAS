10 ? "‚›—ˆ‘‹…ˆ… F(Z)=1/Z^2"
20 INPUT "RE Z,IM Z ";A,B
30 G=(A*A+B*B)^2
35 E=(A*A-B*B)/G
40 F=-2*A*B/G
45 A=E
50 B=F
55 ? "RE F(Z)="A,"IM F(Z)="B
60 GOTO 20
