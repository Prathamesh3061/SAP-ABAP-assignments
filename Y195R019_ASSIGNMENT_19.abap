*&---------------------------------------------------------------------*
*& Report Y195R019_ASSIGNMENT_19
*&---------------------------------------------------------------------*
*&
*&---------------------------------------------------------------------*
REPORT y195r019_assignment_19.

SELECTION-SCREEN BEGIN OF BLOCK b1 WITH FRAME TITLE TEXT-001.

  PARAMETERS : p_num TYPE n LENGTH 10.

SELECTION-SCREEN END OF BLOCK b1.

DATA : gv_temp    TYPE n LENGTH 10,
       gv_remain  TYPE n LENGTH 10,
       gv_reverse TYPE n LENGTH 10.

gv_temp = p_num.
gv_reverse = 0.

WHILE gv_temp > 0.
gv_remain = gv_temp mod 10.
gv_reverse = ( gv_reverse * 10 ) + gv_remain.
gv_temp = gv_temp div 10.
ENDWHILE.



WRITE: / 'Input Number:',  p_num no-ZERO.
WRITE : / 'Reversed number:', gv_reverse no-ZERO.
