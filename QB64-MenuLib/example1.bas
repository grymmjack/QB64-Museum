'$INCLUDE:'menutop.bi'

CONST FALSE = 0, TRUE = NOT FALSE
DIM Menu%
SCREEN _NEWIMAGE(640, 480, 32)
CLS , _RGB32(50, 100, 200)
_SCREENMOVE _MIDDLE
MAKEMENU
SHOWMENU
DO
    Menu% = CHECKMENU%(TRUE)
LOOP UNTIL Menu% = 103
HIDEMENU
DATA "&File","&Open...#CTRL+O","&Save#CTRL+S","-E&xit#CTRL+Q","*"
DATA "&Help","&About...","*"
DATA "!"

'$INCLUDE:'menu.bi'
