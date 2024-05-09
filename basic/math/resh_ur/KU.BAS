5 PRINT "…˜…ˆ… Š‚€„€’ŽƒŽ “€‚…ˆŸ"
10 INPUT "€2,€1,€0 "; C, B, A
20 D = B / 2 / C
25 F = D * D - A / C
30 IF F > 0 THEN 60
40 PRINT "X1,X2="; D; "+-J*"; SQR(-F)
50 GOTO 10
60 PRINT "X1="; (-D) - SQR(F)
65 PRINT "X2="; (-D) + SQR(F)
70 GOTO 10

