10 PRINT "ŒˆˆŒˆ‡€–ˆŸ ”“Š–ˆ‰ N ……Œ…›• F(XI) Œ…’Ž„ŽŒ"
15 PRINT "Š‚€„€’ˆ—Ž‰ ˆ’…Ž‹Ÿ–ˆˆ-Š‘’€Ž‹Ÿ–ˆŸ"
20 INPUT "—ˆ‘‹Ž ……Œ…›• "; N
21 DIM A(2 * N)
25 INPUT "Žƒ…˜Ž‘’œ ‚›—ˆ‘‹…ˆŸ "; E
30 INPUT "ˆ’…‚€‹ ˆ’…Ž‹Ÿ–ˆˆ "; H
35 FOR I = 1 TO N
40 PRINT "€—€‹œ›… ‡€—…ˆŸ X"; I; "0";
45 INPUT A(I)
50 NEXT I
100 S = 0
110 FOR I = 1 TO N
120 Z = A(I)
121 GOSUB 250
125 V = F
130 A(I) = Z - H
131 GOSUB 250
135 W = F
140 A(I) = Z + H
141 GOSUB 250
145 U = F
150 T = W * (2 * Z + H) - 4 * V * Z + U * (2 * Z - H)
160 T = T / (W - 2 * V + U) / 2
170 IF ABS(T - Z) > E THEN S = 1
180 A(I) = T
185 NEXT I
190 IF S <> 0 THEN 100
200 PRINT "F(IX MIN)="; F
210 FOR I = 1 TO N
220 PRINT "X"; I; "MIN="; A(I)
230 NEXT I
240 END
250 F = EXP(A(1) + A(2) + A(3)) / (A(1) * A(2) * A(2) * A(3) * A(3) * A(3))
255 RETURN

