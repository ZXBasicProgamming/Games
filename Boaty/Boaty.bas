Check EF471226
Auto 8224

# Run-time Variables

Var a: Num = 0
Var h: Num = 0
Var t: Num = 1
Var l: Num = 2
Var r: Num = 0
Var c: Num = 0
Var hiscore: Num = 0
Var lives: Num = 3
Var tim: Num = 4
Var level: Num = 1
Var score: Num = 0
Var px: Num = 18
Var py: Num = 16
Var tc: Num = 16167
Var ct: Num = 16177
Var tt: Num = 16157
Var t1: Num = 4.32
Var lx: Num = 18
Var fuel: Num = 100
Var timer: Num = 70
Var li: Num = 0
Var t4: Num = 29
Var t5: Num = 63
Var b: NumArray(21) = 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
Var f: NumFOR = 1, 65535, 1, 510, 3
Var n: NumFOR = 3, 2, 1, 290, 2
Var t$: StrArray(4, 3) = "\{i6}\ .\a  \{i6}\. \b  "
Var p$: StrArray(4, 7) = "\{i2}\'.\..\..\::\.' \''\''\''\'   \{i2}\.   \..\ .\ '\''\''\''\'   "

# End Run-time Variables

   1 REM : INT px, py, lx, score, ct, tt, r, c, li, t4, t5, l
   2 REM : BREAK
   3 REM written by David Saphier
   4 REM https://www.facebook.com/groups/ZXBasic/
   5 REM compiling with Hisoft wotks really well!
   9 REM : OPEN #
  10 BORDER 0: PAPER 0: INK 1: CLS
  11 REM FOR a=0 TO 6912: POKE 16384+a,PEEK (39000+a): NEXT a
  20 PRINT AT 13,5; INK 2;"Boaty"; INK 4;"By David Saphier"
  30 PRINT AT 14,9; INK 2;"Q"; INK 4;"Left"
  40 PRINT AT 15,9; INK 2;"P"; INK 4;"Right"
  50 PRINT AT 17,6; INK 2;"Save the Islanders"; INK 4;AT 18,4;"Before the storm arrives"
  60 PRINT AT 21,7; INK 2;"Any"; INK 4;"Key to start"
  70 PAUSE 0
 100 GO SUB 510: LET hiscore=0
 110 LET lives=3: LET tim=4: LET h=0: LET t=1: DIM b(21): DIM t$(4,3)
 120 LET l=3: LET level=1: LET score=0: LET px=18: LET py=16: LET tc=1
 130 LET l=2: LET ct=5: LET tt=0: LET r=0: LET c=0: LET f=1: LET t1=0: LET lx=16: LET fuel=100: LET timer=90: DIM p$(4,7)
 140 LET p$(1)=CHR$ (16)+CHR$ +(2)+"\'.\..\..\::\.'": LET p$(2)=" \''\''\''\' ": LET t$(1)=CHR$ (16)+CHR$ (6)+"\ .": LET t$(2)="\a": BORDER 0:
 150 LET p$(3)=CHR$ (16)+CHR$ +(2)+"\.   \..\ .": LET p$(4)="\ '\''\''\''\' ": LET t$(3)=CHR$ (16)+CHR$ (6)+"\. ": LET t$(4)="\b": PAPER 0
 155 
 160 INK 7: CLS : FOR n=0 TO 5: PRINT AT n,0; PAPER 1,,AT 21-n,0; PAPER 5,,;AT 21-n,0; INK 7;"\r--\r--\r--\r\r--\r--\r---\r-\r--\r-\r--\r": NEXT n
 170 PRINT AT 5,30; PAPER 1; INK 6;"\' ";AT 2,30; PAPER 1; INK 6;"\. ";AT 5,27; PAPER 1; INK 6;"\ '";AT 2,27; PAPER 6; INK 1;"\:'  "; PAPER 6;AT 3,27;"    ";AT 4,27;"    ";AT 5,28;"  ";AT 16,0; PAPER 6; INK 2;"\d\d\d\d\d\e"; PAPER 0;"                   "; INK 1; PAPER 4;"\f\d\d\d\d\d\d";AT 6,0; INK 1; PAPER 3;"\c\c\c\c\c\c\c\c\c\c\c\c\c\c\c\c\c\c\c\c\c\c\c\c\c\c\c\c\c\c\c\c";AT 7,0; INK 3; PAPER 1;"\..\..\..\..\..\..\..\..\..\..\..\..\..\..\..\..\..\..\..\..\..\..\..\..\..\..\..\..\..\..\..\..";AT 6,0; INK 1; PAPER 3;"\..\..\..\..\..\..\..\..\..\..\..\..\..\..\..\..\..\..\..\..\..\..\..\..\..\..\..\..\..\..\..\..";AT 9,0; INK 3; PAPER 2;"\':\':\':\':\':\':\':\':\':\':\':\':\':\':\':\':\':\':\':\':\':\':\':\':\':\':\':\':\':\':\':\':";AT 8,0; INK 1;"\c\c\c\c\c\c\c\c\c\c\c\c\c\c\c\c\c\c\c\c\c\c\c\c\c\c\c\c\c\c\c\c": PRINT PAPER 8;AT 0,12;"Hiscore:";hiscore;AT 1,13;lives;" Boats";AT 1,3;"00000";score;AT 1,24;"Level:";level: LET li=0: POKE 23672,0
 180 PRINT AT 10,0; PAPER 8; INK 2;"\\\\//\\\\/\\/\\/\\\\/\\\\\\///\\/\\////\\//\\/";AT 11,2; INK 6;"\g\h";AT 12,1;"\g  \h";AT 13,0;"\g    \h":
 185 REM ## MAIN LOOP
 190 IF tt>ct THEN GO SUB 220: GO SUB 450: LET ct=tt+(20/level): GO SUB 250
 200 GO SUB 640
 205 GO SUB 211
 210 GO TO 190:
 211 IF tt>tc THEN LET timer=timer-1: PRINT AT 4,9;"\ :\ :\ :\ :\ :\ :\ :\ :\ :\ : ."( TO (timer)/10): LET tc=tt+10
 219 RETURN :
 220 IF IN 64510=190 THEN IF px>6 THEN LET px=px-1: PRINT AT py,px+5; PAPER 8;(" " AND px<28);AT py-2,px+3;" ": BEEP .01,01: RETURN
 230 IF IN 57342=190 THEN IF px<24 THEN LET px=px+1: BEEP .008,-3: PRINT AT py,px-1; PAPER 8;(" " AND px>0);AT py+1,px-1; PAPER 8;" ";AT py-2,px;" ";(CHR$ (22)+CHR$ (py-(f/2))+(CHR$ (px+1)+" " AND c=1)+(CHR$ (22)+CHR$ (py-2)+CHR$ (px+1)+" " AND c=1)): RETURN
 240 RETURN :
 250 PRINT PAPER 8;AT py,px;p$(f);AT py+1,px; PAPER 8;p$(f+1);AT py-1-(f/2),px+1;" ";(t$(f) AND c=1);AT py-(f/2),px+2; PAPER 8;(t$(f+1) AND c=1);(CHR$ (22)+CHR$ (py-(f/2)-2)+CHR$ (px+2)+" " AND f<3 AND c=1)
 260 IF px>16 THEN PRINT ; PAPER 4; INK 1;AT 16,28;("\d" AND px=23);AT 16,27;("\d" AND px=22);AT 16,26;("\d" AND px=21);AT 16,25;("\f" AND px=20)
 270 BEEP .01,01
 280 GO SUB 320
 290 FOR n=0 TO l: PRINT AT 14,n*2;t$(f);AT 15,n*2;t$(f+1);" ": NEXT n
 300 IF (f<=3) THEN LET f=f+2: IF f>=4 THEN LET f=1
 310 RETURN :
 320 REM THIS IS IS LIGHTENING PART!!
 330 REM ############################
 340 LET t1=t1+0.48: IF INT t1>4 THEN LET t1=0
 350 REM PRINT AT 16,16; PAPER 1; INK 7;("X" AND t1>200); PAPER 0;(" " AND t1<80)
 360 IF INT t1=2 THEN PRINT AT 16,lx;"\h";AT 15,lx;"\g";AT 14,lx;"\h";AT 13,lx;"\g";AT 12,lx;"\h";AT 11,lx;"\h";AT 10,lx;"\h": PRINT AT 10,09; INK 7;"\g\h\g\h\g\h\g\h\g\h\g\h\g":: LET li=1: BORDER 6: BORDER 6: BORDER 0
 365 PRINT INK 2;AT 10,09;("/\\/\\/\\/\\/\\/\\/" AND f>=3); INK 6;("\\/\\/\\/\\/\\/\\/\\" AND f<=2)
 370 IF px>=lx-4 AND px<=lx AND li=1 THEN LET lives=lives-1: PRINT PAPER 8;AT 1,13;lives;" Boat";(" " AND lives<=1): GO TO 400
 380 IF INT t1=4 AND li=1 THEN PRINT PAPER 0;AT 16,lx;" ";AT 15,lx;" ";AT 14,lx;" ";AT 13,lx;" ";AT 12,lx;" ";AT 11,lx;" ": LET li=0: LET lx=INT (RND*10+12): PRINT AT 11,lx; INK 2;"~"
 390 RETURN :
 400 PRINT AT 16,lx; PAPER 0; INK 2;"*": FOR n=1 TO 15 STEP 0.5: BEEP .01,12-n: BEEP .001,0+n: NEXT n:: IF lives<=0 THEN GO TO 500
 410 PRINT PAPER 0;AT 16,lx;" ";AT 15,lx;" ";AT 14,lx;" ";AT 13,lx;" ";AT 12,lx;" ";AT 11,lx;" ": LET li=0
 415 LET lx=INT (RND*10+12): PRINT AT 11,lx; INK 2;"~"
 430 REM
 440 RETURN :
 450 IF px=6 AND c=0 THEN LET c=1: PRINT AT 14,l*2;" ";AT 15,l*2;" ": LET l=l-1:
 460 IF px=23 AND c=1 THEN LET c=0: LET s$=t$(f+1): PRINT OVER 1;(CHR$ (22)+CHR$ (14)+CHR$ (30)+t$(f)+CHR$ (22)+CHR$ (15)+CHR$ (30)+s$( TO 1) AND l=1);(CHR$ (22)+CHR$ (14)+CHR$ (28)+t$(f)+CHR$ (22)+CHR$ (15)+CHR$ (28)+t$(f+1) AND l=0);(CHR$ (22)+CHR$ (14)+CHR$ (26)+t$(f)+CHR$ (22)+CHR$ (15)+CHR$ (26)+t$(f+1) AND l<0): LET score=score+100: PRINT AT 1,1; PAPER 8;"Score:";score: PRINT AT 16,24;" ";AT 15,24;" "
 470 IF l<0 AND px=23 THEN LET level=level+1: PRINT PAPER 8;AT 1,24;"Level:";level: LET l=2: PAUSE 100: GO TO 490
 480 RETURN
 490 FOR n=0 TO 100: BEEP .01,0.2*n: NEXT n: GO TO 160
 500 REM end
 501 IF score>hiscore THEN LET hiscore=score: PRINT AT 11,10;"New Hiscore!"
 502 PRINT AT 12,12;"GAME OVER!": FOR n=1 TO 25: PAUSE n: NEXT n
 505 CLS : GO TO 110
 510 RESTORE 530: FOR F=65368 TO 65535: READ A: POKE F,A: NEXT F
 520 RETURN
 530 DATA 24,60,106,74,24,16,124,68,153,153,126,16,8,60,66,67
 540 DATA 85,170,85,170,85,170,85,170,219,180,0,2,16,66,0,255
 550 DATA 223,183,1,3,17,67,1,255,251,237,128,192,136,194,128,255
 560 DATA 1,2,4,8,16,32,64,128,128,64,32,16,8,4,2,1
 570 DATA 3,1,0,0,0,1,1,255,0,2,2,2,66,66,60,0
 580 DATA 254,3,251,195,195,195,22,15,0,0,0,0,3,3,7,249
 590 DATA 63,25,12,6,1,0,0,0,255,255,255,0,196,127,3,0
 600 DATA 255,65,252,0,82,239,255,0,15,67,128,17,7,255,255,0
 610 DATA 241,121,4,124,254,251,255,1,34,204,0,0,0,0,0,0
 620 DATA 0,60,64,60,2,66,60,0,0,254,16,16,16,16,16,0
 630 DATA 0,66,66,66,66,66,60,0
 640 LET t4=PEEK 23672
 650 LET t5=PEEK 23673
 660 LET tt=t4+256*(t5)
 670 RETURN
