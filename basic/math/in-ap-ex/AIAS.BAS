10 PRINT "€ŽŠ‘ˆŒ€–ˆŸ,ˆ’…Ž‹Ÿ–ˆŸ ˆ Š‘’€Ž‹Ÿ–ˆŸ"
20 PRINT "‘‹€‰€Œˆ ˆ ‹ŽŠ€‹œŽŒ ˆ• ‡€„€ˆˆ"
30 INPUT "€—€‹œŽ… ‡€—…ˆ… X0"; A
40 INPUT "˜€ƒ H"; H
50 INPUT "ŽŒ… Ž‘‹…„…ƒŽ “‡‹€ N"; N
55 DIM Y(N)
60 FOR I = 0 TO N
65 PRINT "Y"; I;
70 INPUT Y(I)
75 NEXT I
80 INPUT "ŽŸ„ŽŠ Ž‹ˆŽŒ€ (1,2,3)"; P
90 IF P = 2 THEN 130
100 IF P = 3 THEN 150
110 INPUT "X"; X
115 GOSUB 1000
120 PRINT "Y("; X; ")="; W
125 GOTO 110
130 INPUT "X"; X
135 GOSUB 2000
140 PRINT "Y("; X; ")="; W
145 GOTO 130
146 DIM M(N)
150 INPUT "DY/DX:‡€„€…’‘Ÿ<1>,… ‡€„€…’‘Ÿ<0> "; K
170 IF K = 0 THEN 200
180 FOR I = 0 TO N
185 PRINT "DY/DX"; I;
190 INPUT M(I)
191 NEXT I
195 GOTO 230
200 M(0) = (4 * Y(1) - Y(2) - 3 * Y(0)) / 2 / H
205 FOR I = 1 TO N - 1
210 M(I) = (Y(I + 1) - Y(I - 1)) / 2 / H
215 NEXT I
230 INPUT "X"; X
235 GOSUB 3000
240 PRINT "Y("; X; ")="; W
245 GOTO 230
1000 IF X <= A THEN 1050'‚›—ˆ‘‹…ˆ… Y(X)=W ˆ ‘’……ˆ Ž‹ˆŽŒ€ 1
1020 B = A + H * N
1025 IF X >= B THEN 1060
1030 I = INT((X - A) / H)
1035 W = Y(I)
1040 W = W + (Y(I + 1) - Y(I)) * (X - I * H - A) / H
1045 RETURN
1050 W = Y(0) + (X - A) * (Y(I) - Y(0)) / H
1055 RETURN
1060 W = Y(N) + (X - B) * (Y(N) - Y(N - 1)) / H
1065 RETURN
2000 IF X <= A THEN 2060'‚›—ˆ‘‹…ˆ… Y(X)=W ˆ ‘’……ˆ Ž‹ˆŽŒ€ 2
2020 B = A + N * H
2025 IF X >= B THEN 2070
2030 I = 1 + 2 * INT((X - A) / 2 / H)
2035 P = (X - A - I * H) / H
2040 W = P * (P - 1) * Y(I - 1) / 2 + (1 - P * P) * Y(I)
2050 W = W + P * (P + 1) * Y(I + 1) / 2
2055 RETURN
2060 W = Y(0) + (X - A) * (4 * Y(1) - Y(2) - 3 * Y(0)) / 2 / H
2065 RETURN
2070 W = Y(N) + (X - B) * (3 * Y(N) + Y(N - 2) - 4 * Y(N - 1)) / 2 / H
2075 RETURN
3000 IF X <= A THEN 3080'‚›—.Y(X)=W ˆ ‘’….Ž‹ˆŽŒ€ 3
3020 B = A + N * H
3025 IF X >= B THEN 3090
3030 I = INT((X - A) / H)
3035 B = A + I * H
3040 C = B + H
3041 D = X - C
3045 E = X - B
3050 W = D * D * (E + E + H) * Y(I) + E * E * (H - D - D) * Y(I + 1)
3060 W = W / H + D * D * E * M(I)
3070 W = (W + E * E * D * M(I + 1)) / H / H
3075 RETURN
3080 W = Y(0) + (X - A) * M(0)
3085 RETURN
3090 W = Y(N) + (X - B) * M(N)
3095 RETURN

