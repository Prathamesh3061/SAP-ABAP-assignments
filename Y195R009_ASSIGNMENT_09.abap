*&---------------------------------------------------------------------*
*& Report Y195R009_ASSIGNMENT_09
*&---------------------------------------------------------------------*
*&
*&---------------------------------------------------------------------*
REPORT y195r009_assignment_09.

SELECTION-SCREEN BEGIN OF BLOCK b1 WITH FRAME TITLE TEXT-001.

  PARAMETERS : p_num TYPE i .

SELECTION-SCREEN END OF BLOCK b1.

DATA : gv_temp  TYPE i,
       gv_digit TYPE i,
       gv_sum   TYPE i VALUE 0,
       gv_len   TYPE i,
       gv_str   TYPE string.

gv_str = p_num.
gv_str = condense( gv_str ).
gv_len = strlen( gv_str ).

gv_temp = p_num.

WHILE gv_temp > 0.
  gv_digit = gv_temp MOD 10.
  gv_sum = gv_sum + ( gv_digit ** gv_len ).
  gv_temp = gv_temp DIV 10.
ENDWHILE.

IF gv_sum = p_num.
WRITE : / p_num COLOR COL_POSITIVE,' is an armstrong number' COLOR COL_POSITIVE INVERSE.
else.
  WRITE : / p_num COLOR COL_NEGATIVE, 'is an not armstrong number.' COLOR COL_NEGATIVE INVERSE.
ENDIF.
