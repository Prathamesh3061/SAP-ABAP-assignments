*&---------------------------------------------------------------------*
*& Report Y195R016_ASSIGNMENT_16
*&---------------------------------------------------------------------*
*&
*&---------------------------------------------------------------------*
REPORT Y195R016_ASSIGNMENT_16.

SELECTION-SCREEN BEGIN OF BLOCK b1 WITH FRAME TITLE text-001.

  PARAMETERS : p_date TYPE dats.

 SELECTION-SCREEN END OF BLOCK b1.

 WRITE : / 'Input data:', p_date.
 WRITE: / 'Date:', p_date+6(2), 'month:', p_date+4(2), 'Year:', p_date+0(4).
