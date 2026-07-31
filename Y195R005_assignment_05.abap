*&---------------------------------------------------------------------*
*& Report Y195R005_ASSIGNMENT_05
*&---------------------------------------------------------------------*
*&
*&---------------------------------------------------------------------*
REPORT y195r005_assignment_05.

DATA: gv_diff TYPE n LENGTH 4.

SELECTION-SCREEN BEGIN OF BLOCK b1 WITH FRAME TITLE TEXT-001.

  PARAMETERS : p_from TYPE n LENGTH 4,
               p_to   TYPE n LENGTH 4.

SELECTION-SCREEN END OF BLOCK b1.


AT SELECTION-SCREEN.
  gv_diff = p_to - p_from.
  IF gv_diff > 40 .
    MESSAGE:  'From years and to year difference should not be > 40' TYPE 'E' DISPLAY LIKE 'I'.
  ENDIF.

START-OF-SELECTION.

  WHILE p_from < p_to.
    IF p_from MOD 4 = 0.
*      gv_leap = p_from.
*      WRITE: / 'Leap year:', p_from.
      WRITE: / p_from.
    ENDIF.
    p_from = p_from + 1.

  ENDWHILE.

END-OF-SELECTION.