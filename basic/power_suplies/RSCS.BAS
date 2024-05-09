10 PRINT "€‘—…’ ””…Š’ˆ‚Ž‰ Œ€ƒˆ’Ž‰ Žˆ–€…ŒŽ‘’ˆ"
20 PRINT "–ˆ‹ˆ„ˆ—…‘ŠŽƒŽ ‘…„…—ˆŠ€ Š€’“˜…Š ˆ„“Š’ˆ‚Ž‘’ˆ."
30 INPUT "Š€’“˜Š€ €ŒŽ’€€ Ž€ ‘…„…—ˆŠ [0] ˆ‹ˆ € Š€Š€‘ [1] "; K
40 INPUT "€—€‹œ€Ÿ Œ€ƒˆ’€Ÿ Žˆ–€…ŒŽ‘’œ Œ€’…ˆ€‹€ "; MN
50 INPUT "„ˆ€Œ…’ ‘…„…—ˆŠ€,ŒŒ "; D
60 INPUT "„‹ˆ€ ‘…„…—ˆŠ€,ŒŒ "; S
70 MC = MN / (1 + .84 * (D / S) ^ 1.7 * (MN - 1))
80 IF K = 0 THEN 110
90 INPUT "‘…„ˆ‰ „ˆ€Œ…’ Š€’“˜Šˆ,ŒŒ "; DS
100 MC = D * D * (MC - 1) / DS / DS + 1
110 PRINT "””…Š’ˆ‚€Ÿ Œ€ƒˆ’€Ÿ Žˆ–€…ŒŽ‘’œ"; MC; "."
120 PRINT
130 PRINT "€‘—…’ ˆ„“Š’ˆ‚Ž‘’ˆ Š€’“˜…Š ‘ ‘…„…—ˆŠŽŒ ˆ …‡ ‘…„…—ˆŠ€."
140 PRINT "…ˆ‡‚…‘’“ž ‚…‹ˆ—ˆ“ Ž“‹ˆ’œ.‚›•Ž„-Ž… ‚…‹ˆ—ˆ› €‚› “‹ž."
150 INPUT "ˆ„“Š’ˆ‚Ž‘’œ Š€’“˜Šˆ ‘  ‘…„…—ˆŠŽŒ "; IS1
160 INPUT "ˆ„“Š’ˆ‚Ž‘’œ Š€’“˜Šˆ …‡ ‘…„…—ˆŠ€ "; IB
170 IF IS1 = 0 AND IB = 0 THEN 10
180 IF IS1 = 0 THEN IS1 = IB * MC ELSE IB = IS1 / MC
190 PRINT
200 PRINT "ˆ„“Š’ˆ‚Ž‘’œ Š€’“˜Šˆ ‘  ‘…„…—ˆŠŽŒ"; IS1
210 PRINT "ˆ„“Š’ˆ‚Ž‘’œ Š€’“˜Šˆ …‡ ‘…„…—ˆŠ€"; IB
220 PRINT
230 PRINT
240 GOTO 120

