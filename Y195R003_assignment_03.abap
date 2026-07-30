*&---------------------------------------------------------------------*
*& Report Y195R003_ASSIGNMENT_03
*&---------------------------------------------------------------------*
*&
*&---------------------------------------------------------------------*
REPORT y195r003_assignment_03.

SELECTION-SCREEN BEGIN OF BLOCK b1 WITH FRAME TITLE TEXT-001.

  PARAMETERS : p_num1 TYPE i,
               p_num2 TYPE i.

SELECTION-SCREEN END OF BLOCK b1.

DATA: gv_start TYPE i,
      gv_row   TYPE i,
      gv_col   TYPE i,
      gv_res   TYPE i.

gv_start = p_num1.

WHILE gv_start <= p_num2.

  gv_row = 1.

  DO 10 TIMES.

    gv_col = gv_start.

    WHILE gv_col <= gv_start + 4 AND gv_col <= p_num2.
      gv_res = gv_row * gv_col.
      WRITE: gv_res.
      gv_col = gv_col + 1.
    ENDWHILE.
    SKIP.
    gv_row = gv_row + 1.

  ENDDO.

  SKIP.

  gv_start = gv_start + 5.

ENDWHILE.