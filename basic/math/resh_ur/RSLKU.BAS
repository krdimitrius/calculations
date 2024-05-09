10 PRINT "…˜…ˆ… ‘ˆ‘’…Œ› ‹ˆ…‰›• “€‚…ˆ‰ ‘ ŠŽŒ‹…Š‘›Œˆ ……
Œ…›Œˆ Œ…’Ž„ŽŒ ‚€™…ˆŸ"
20 INPUT "—ˆ‘‹Ž “€‚…ˆ‰ ";N%
30 N%=N%*2
40 M!=0
50 DIM A!(N%,N%)
60 FOR I%=1 TO N%ST 2
70 FOR J%=1 TO N%ST 2
80 PRINT "RE,JM „‹Ÿ A("I%","J%")";
90 INPUT A!(I%,J%),A!(I%+1,J%)
100 A!(I%,J%+1)=-A!(I%+1,J%)
110 A!(I%+1,J%+1)=A!(I%,J%)
120 IF J%+1<>N%THEN 150
130 PRINT "RE,JM „‹Ÿ B("I%")";
140 INPUT A!(I%,0),A!(I%+1,0)
150 NEXT J%
160 NEXT I%
170 FOR I%=1 TO N%-1
180 FOR K%=I%+1 TO N%
190 IF A!(I%,I%)<>0 THEN 240
200 IF A!(K%,I%)<>0 THEN 240
210 M!=1
220 L!=0
230 GOTO 270
240 M!=SQR(A!(I%,I%)*A!(I%,I%)+A!(K%,I%)*A!(K%,I%))
250 L!=-A!(K%,I%)/M!
260 M!=A!(I%,I%)/M!
270 FOR J%=1 TO N%
280 R!=M!*A!(I%,J%)-L!*A!(K%,J%)
290 A!(K%,J%)=L!*A!(I%,J%)+M!*A!(K%,J%)
300 A!(I%,J%)=R!
310 NEXT J%
320 R!=M!*A!(I%,0)-L!*A!(K%,0)
330 A!(K%,0)=L!*A!(I%,0)+M!*A!(K%,0)
340 A!(I%,0)=R!
350 NEXT K%
360 NEXT I%
370 FOR I%=N%TO 1 STEP -1
380 M!=0
390 FOR K%=0 TO N%-I%-1
400 M!=M!+A!(0,N%-K%)*A!(I%,N%-K%)
410 NEXT K%
420 A!(0,I%)=(A!(I%,0)-M!)/A!(I%,I%)
430 NEXT I%
440 FOR I%=1 TO N% ST 2
450 ? "X("I%\2+1")="A!(0,I%)"+i*"A!(0,I%+1)
460 NEXT I%
