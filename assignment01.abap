*&---------------------------------------------------------------------*
*& Report Y195001R_ASSIGNMENT_01
*&---------------------------------------------------------------------*
*&
*&---------------------------------------------------------------------*
REPORT y195r001_assignment_01.

DATA: gv_num TYPE i.

SELECTION-SCREEN BEGIN OF BLOCK b1 WITH FRAME TITLE TEXT-001.

  PARAMETERS : p_from TYPE i,
               p_to   TYPE i.

SELECTION-SCREEN END OF BLOCK b1.

SELECTION-SCREEN BEGIN OF BLOCK b2 WITH FRAME TITLE TEXT-002.

  PARAMETERS : rb_all  RADIOBUTTON GROUP g1 DEFAULT 'X',
               rb_even RADIOBUTTON GROUP g1,
               rb_odd  RADIOBUTTON GROUP g1.

SELECTION-SCREEN END OF BLOCK b2.

AT SELECTION-SCREEN OUTPUT.

START-OF-SELECTION.

*validation
  IF p_from >= p_to.
    WRITE: / 'Error : from number must be smaller than to'.
  ENDIF.


  gv_num = p_from.

  WHILE gv_num <= p_to.
    IF rb_all = 'X'.
      WRITE : / gv_num.
    ELSEIF rb_even = 'X' AND ( gv_num MOD 2 ) = 0.
      WRITE : / gv_num.
    ELSEIF rb_odd = 'X' AND ( gv_num MOD 2 ) <> 0.
      WRITE : / gv_num.
    ENDIF.

    gv_num = gv_num + 1.
  ENDWHILE.






END-OF-SELECTION.