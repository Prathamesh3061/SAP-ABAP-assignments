*&---------------------------------------------------------------------*
*& Report Y195R012_ASSIGNMENT_12
*&---------------------------------------------------------------------*
*&
*&---------------------------------------------------------------------*
REPORT y195r012_assignment_12.

DATA: gv_sum  TYPE i,
      gv_avg  TYPE p LENGTH 9 DECIMALS 2,
      gv_prod TYPE i.
SELECTION-SCREEN BEGIN OF BLOCK b1 WITH FRAME TITLE TEXT-001.

  PARAMETERS: p_num1 TYPE i,
              p_num2 TYPE i,
              p_num3 TYPE i,
              p_num4 TYPE i,
              p_num5 TYPE i.

SELECTION-SCREEN END OF BLOCK b1.


SELECTION-SCREEN BEGIN OF BLOCK b2 WITH FRAME TITLE TEXT-002.

  PARAMETERS: p_sum  AS CHECKBOX,
              p_avg  AS CHECKBOX,
              p_prod AS CHECKBOX.

SELECTION-SCREEN END OF BLOCK b2.


AT SELECTION-SCREEN.

  IF p_num1 < 0 OR  p_num2 < 0 OR p_num3 < 0 OR p_num4 < 0 OR p_num5 < 0.
    MESSAGE : 'Enter valid number, negative number not allowed.' TYPE 'E' DISPLAY LIKE 'I'.
  ENDIF.

START-OF-SELECTION.

  IF p_sum = 'X'.
    gv_sum = p_num1 + p_num2 + p_num3 + p_num4 + p_num5.
  ENDIF.
  IF p_avg = 'X'.
    gv_avg = ( p_num1 + p_num2 + p_num3 + p_num4 + p_num5 ) / 5.
  ENDIF.

  IF p_prod = 'X'.
    gv_prod =  p_num1 * p_num2 * p_num3 * p_num4 * p_num5.
  ENDIF.

  WRITE : / 'Entered number are :'.

  WRITE : / 'Number 1:', p_num1 CENTERED ,/ 'Number 2:',p_num2 CENTERED, / 'Number 3:', p_num3 CENTERED, / 'Number 4:', p_num4 CENTERED, / 'Number 5:', p_num5 CENTERED.

  SKIP.

  WRITE: / 'Sum:', gv_sum CENTERED,
  / 'Average:', gv_avg CENTERED,
  /'Product:', gv_prod CENTERED.

END-OF-SELECTION.
