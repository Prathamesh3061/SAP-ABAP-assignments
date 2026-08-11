*&---------------------------------------------------------------------*
*& Report Y195R010_ASSIGNMENT_10
*&---------------------------------------------------------------------*
*&
*&---------------------------------------------------------------------*
REPORT y195r010_assignment_10.

SELECTION-SCREEN BEGIN OF BLOCK b1 WITH FRAME TITLE TEXT-001.
  PARAMETERS: p_num1  TYPE i,
              p_num2  TYPE i,
              p_num3  TYPE i,
              p_num4  TYPE i,
              p_num5  TYPE i,
              p_num6  TYPE i,
              p_num7  TYPE i,
              p_num8  TYPE i,
              p_num9  TYPE i,
              p_num10 TYPE i.

SELECTION-SCREEN END OF BLOCK b1.

DATA: gv_num1  TYPE i,
      gv_num2  TYPE i,
      gv_num3  TYPE i,
      gv_num4  TYPE i,
      gv_num5  TYPE i,
      gv_num6  TYPE i,
      gv_num7  TYPE i,
      gv_num8  TYPE i,
      gv_num9  TYPE i,
      gv_num10 TYPE i,
      gv_temp  TYPE i.

gv_num1 = p_num1.
gv_num2 = p_num2.
gv_num3 = p_num3.
gv_num4 = p_num4.
gv_num5 = p_num5.
gv_num6 = p_num6.
gv_num7 = p_num7.
gv_num8 = p_num8.
gv_num9 = p_num9.
gv_num10 = p_num10.


DO 10 TIMES.
  IF gv_num1 > gv_num2.
    gv_temp = gv_num2.
    gv_num2 = gv_num1.
    gv_num1 = gv_temp.
  ENDIF.

  IF gv_num2 > gv_num3.
    gv_temp = gv_num3.
    gv_num3 = gv_num2.
    gv_num2 = gv_temp.
  ENDIF.

  IF gv_num3 > gv_num4.
    gv_temp = gv_num4.
    gv_num4 = gv_num3.
    gv_num3 = gv_temp.
  ENDIF.

  IF gv_num4 > gv_num5.
    gv_temp = gv_num5.
    gv_num5 = gv_num4.
    gv_num4 = gv_temp.
  ENDIF.

  IF gv_num5 > gv_num6.
    gv_temp = gv_num6.
    gv_num6 = gv_num5.
    gv_num5 = gv_temp.
  ENDIF.

  IF gv_num6 > gv_num7.
    gv_temp = gv_num7.
    gv_num7 = gv_num6.
    gv_num6 = gv_temp.
  ENDIF.

  IF gv_num7 > gv_num8.
    gv_temp = gv_num8.
    gv_num8 = gv_num7.
    gv_num7 = gv_temp.
  ENDIF.

  IF gv_num8 > gv_num9.
    gv_temp = gv_num9.
    gv_num9 = gv_num8.
    gv_num8 = gv_temp.
  ENDIF.

  IF gv_num9 > gv_num10.
    gv_temp = gv_num10.
    gv_num10 = gv_num9.
    gv_num9 = gv_temp.
  ENDIF.
ENDDO.

WRITE : / 'Sorted numbers: ', gv_num1, gv_num2, gv_num3, gv_num4, gv_num5, gv_num6, gv_num7, gv_num8, gv_num9, gv_num10.
