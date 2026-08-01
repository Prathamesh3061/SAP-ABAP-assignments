*&---------------------------------------------------------------------*
*& Report Y195R006_ASSIGNMENT_06
*&---------------------------------------------------------------------*
*&
*&---------------------------------------------------------------------*
REPORT Y195R006_ASSIGNMENT_06.

DATA:  gv_temp TYPE i,
      gv_curr type i,
      gv_prev TYPE i.

SELECTION-SCREEN BEGIN OF BLOCK b1 WITH FRAME TITLE text-001.

  PARAMETERS: p_num TYPE i,
  p_count TYPE i.

  SELECTION-SCREEN END OF BLOCK b1.

  gv_temp = p_num.
  gv_prev = p_num + 1.



  DO p_count TIMES.
WRITE: / gv_temp.
gv_curr = gv_temp + gv_prev.
gv_temp = gv_prev.
gv_prev = gv_curr.

  ENDDO.