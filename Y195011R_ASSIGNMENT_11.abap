*&---------------------------------------------------------------------*
*& Report Y195011R_ASSIGNMENT_11
*&---------------------------------------------------------------------*
*&
*&---------------------------------------------------------------------*
REPORT y195r011_assignment_11.

DATA: gv_num1   TYPE i,
      gv_num2   TYPE i,
      gv_output TYPE i.

SELECTION-SCREEN BEGIN OF BLOCK b1 WITH FRAME TITLE TEXT-001.

  PARAMETERS : p_num1 TYPE char10,
               p_num2 TYPE char10.

SELECTION-SCREEN END OF BLOCK b1.

SELECTION-SCREEN BEGIN OF BLOCK b2 WITH FRAME TITLE TEXT-002.

  PARAMETERS : rb_add  RADIOBUTTON GROUP g1 DEFAULT 'X',
               rb_sub  RADIOBUTTON GROUP g1,
               rb_mult RADIOBUTTON GROUP g1,
               rb_div  RADIOBUTTON GROUP g1.

SELECTION-SCREEN END OF BLOCK b2.



AT SELECTION-SCREEN.
  CONDENSE p_num1 NO-GAPS.
  CONDENSE p_num2 NO-GAPS.

  IF p_num1 CO ' 0123456789'.
    gv_num1 = p_num1.
  ELSE.
    MESSAGE 'Please enter valid whole number.' TYPE 'E'.
  ENDIF.
  IF p_num2 CO ' 0123456789'.
    gv_num2 = p_num2.
  ELSE.
    MESSAGE 'please enter valid whole number.' TYPE 'E'.
  ENDIF.

START-OF-SELECTION.

  IF rb_add = 'X'.
    gv_output = gv_num1 + gv_num2.
    WRITE: / 'Additon : ', gv_output.
  ELSEIF rb_sub = 'X'.
    gv_output = gv_num1 - gv_num2.
    WRITE: / 'Substraction : ', gv_output.
  ELSEIF rb_mult = 'X'.
    gv_output = gv_num1 * gv_num2.
    WRITE: / 'Multiplication :', gv_output.
  ELSEIF rb_div = 'X'.
    gv_output = gv_num1 DIV gv_num2.
    WRITE: / 'divsion :', gv_output.
  ENDIF.



END-OF-SELECTION.
