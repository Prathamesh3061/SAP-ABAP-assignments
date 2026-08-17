*&---------------------------------------------------------------------*
*& Report Y195R018_ASSIGNMENT_18
*&---------------------------------------------------------------------*
*&
*&---------------------------------------------------------------------*
REPORT y195r018_assignment_18.

DATA: gv_sum TYPE i,
      gv_num TYPE i.

SELECTION-SCREEN BEGIN OF BLOCK b1 WITH FRAME TITLE TEXT-001.

  PARAMETERS : p_num TYPE i.

SELECTION-SCREEN END OF BLOCK b1.

AT SELECTION-SCREEN.

  IF p_num <= 0.
    MESSAGE : 'Enter valid number in the field.' TYPE 'E'.
  ENDIF.

  gv_sum = 0.
  gv_num = p_num.

START-OF-SELECTION.

  WHILE gv_num > 0.
    gv_sum = gv_sum + gv_num.
    gv_num = gv_num - 1.
  ENDWHILE.

  WRITE : / ' Entered:',p_num CENTERED.
  WRITE : / 'sum of first natural number of count',p_num CENTERED,'is:', gv_sum CENTERED.

END-OF-SELECTION.
