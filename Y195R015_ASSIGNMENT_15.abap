*&---------------------------------------------------------------------*
*& Report Y195R015_ASSIGNMENT_15
*&---------------------------------------------------------------------*
*&
*&---------------------------------------------------------------------*
REPORT y195r015_assignment_15.

SELECTION-SCREEN BEGIN OF BLOCK b1 WITH FRAME TITLE TEXT-001.
  PARAMETERS : p_str TYPE string.
SELECTION-SCREEN END OF BLOCK b1.

DATA: gt_words TYPE TABLE OF string,
      gs_word TYPE string.

WRITE: / 'Input string:', p_str.

ULINE.
*CONDENSE p_str.
WRITE : / 'spilted string.'.
SPLIT p_str at ' ' into TABLE gt_words.

LOOP AT gt_words INTO gs_word.
WRITE : / gs_word.
ENDLOOP.
