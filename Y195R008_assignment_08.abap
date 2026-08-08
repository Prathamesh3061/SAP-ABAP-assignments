*&---------------------------------------------------------------------*
*& Report Y195008R_ASSIGNMENT_08
*&---------------------------------------------------------------------*
*&
*&---------------------------------------------------------------------*
REPORT y195008r_assignment_08.

SELECTION-SCREEN BEGIN OF BLOCK b1 WITH FRAME TITLE TEXT-001.

  PARAMETERS : p_num TYPE i.

SELECTION-SCREEN END OF BLOCK b1.

DATA: gv_output TYPE i.

gv_output = 1.

AT SELECTION-SCREEN OUTPUT.

START-OF-SELECTION.

WHILE p_num > 0.
  gv_output = p_num * gv_output.
  p_num = p_num - 1.
ENDWHILE.

WRITE : / gv_output.


END-OF-SELECTION.