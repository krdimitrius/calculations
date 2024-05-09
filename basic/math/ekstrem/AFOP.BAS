10 PRINT "‚›—ˆ‘‹…ˆ… Š‘’…Œ“ŒŽ‚ ”“Š–ˆˆ Ž„Ž‰ ……Œ…Ž‰"
20 PRINT "Œ…’Ž„ŽŒ Š‚€„€’ˆ—Ž‰ ˆ’…Ž‹Ÿ–ˆˆ-Š‘’€Ž‹Ÿ–ˆˆ"
100 INPUT "˜€ƒ "; H
105 INPUT "€—€‹œŽ… ‡€—…ˆ… •1 "; Z
110 INPUT "Žƒ…˜Ž‘’œ …‡“‹œ’€’€ "; E
115 X = Z
116 GOSUB 200
117 V = F
120 X = Z - H
121 GOSUB 200
125 W = F
130 X = Z + H
131 GOSUB 200
135 U = F
140 T = W * (2 * Z + H) - 4 * V * Z + U * (2 * Z - H)
150 T = T / (W - 2 * V + U) / 2
160 IF ABS(T - Z) < E THEN 180
170 Z = T
175 GOTO 115
180 PRINT "XM="; T
190 PRINT "F(XM)="; V
195 END
200 F = ((.1 * X - 2) * X + 10) * X
205 RETURN

