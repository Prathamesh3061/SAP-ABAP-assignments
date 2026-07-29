*&---------------------------------------------------------------------*
*& Report Y195002R_ASSIGNMENT_02
*&---------------------------------------------------------------------*
*&
*&---------------------------------------------------------------------*
REPORT y195r002_assignment_02.


SELECTION-SCREEN BEGIN OF BLOCK b1 WITH FRAME TITLE TEXT-001.

  PARAMETERS : p_num TYPE i.

SELECTION-SCREEN END OF BLOCK b1.


DATA : gv_temp    TYPE i,
       gv_reverse TYPE i,
       gv_remain  TYPE i.

gv_temp = p_num.
gv_reverse = 0.

WHILE gv_temp > 0.
gv_remain = gv_temp mod 10.
gv_reverse = ( gv_reverse * 10 ) + gv_remain.
gv_temp = gv_temp div 10.
ENDWHILE.

IF p_num = gv_reverse.
WRITE : / p_num , ': palindrome number.' COLOR COL_POSITIVE.
else.
WRITE : / p_num , ': not a palindrome number.' COLOR COL_NEGATIVE.
ENDIF.