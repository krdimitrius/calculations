10 ? "‚›—ˆ‘‹…ˆ… F(Z)=ATN(Z)"
20 INPUT "RE Z,IM Z ";A,B
25 E=ATN(2*A/(1-A*A-B*B))/2
30 F=LOG((A*A+(1+B)*(1+B))/(A*A+(B-1)*(B-1)))/4
35 ? "RE F(Z)="E
40 ? "IM F(Z)="F
45 GOTO 20
