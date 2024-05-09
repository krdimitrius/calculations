10 ? "‚›—ˆ‘‹…ˆ… ‹Žƒ€ˆ”Œˆ—…‘ŠŽ‰ Žˆ‡‚Ž„Ž‰"
15 ? "ƒ€ŒŒ€-”“Š–ˆˆ D(LOG ƒ(X))/DX"
20 INPUT "X";X
25 IF X>20 THEN 40
30 C=20+(X-INT(X))
35 GOTO 50
40 X=X+1
45 C=X
50 A=1/2/C
55 A=-A*A/3-A+LOG(C)
60 C=C-1
65 A=A-1/C
70 IF X<C THEN 60
80 ? "D(LOG ƒ(X))/DX="A
85 GOTO 20
