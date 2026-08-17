*&---------------------------------------------------------------------*
*& Report Y195R017_ASSIGNMENT17
*&---------------------------------------------------------------------*
*&
*&---------------------------------------------------------------------*
REPORT Y195R017_ASSIGNMENT17.

SELECTION-SCREEN BEGIN OF BLOCK b1 WITH FRAME TITLE text-001.

  PARAMETERS: p_str TYPE string.

  SELECTION-SCREEN END OF BLOCK b1.

  write :/ p_str.

  ULINE.

  REPLACE all OCCURRENCES OF 'FBI' in p_str with 'Federal Bureau of investigation'.

  WRITE : / 'Replace Acronym String'.

  WRITE: / p_str.
