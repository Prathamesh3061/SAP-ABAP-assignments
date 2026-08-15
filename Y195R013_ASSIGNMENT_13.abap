*&---------------------------------------------------------------------*
*& Report Y195R013_ASSIGNMENT_13
*&---------------------------------------------------------------------*
*&
*&---------------------------------------------------------------------*
REPORT Y195R013_ASSIGNMENT_13.

PARAMETERS : p_str TYPE string.

DATA : gv_upper TYPE String,
      gv_lower TYPE string.


WRITE : / 'Given string: ', p_str.
gv_upper = p_str.
TRANSLATE gv_upper TO UPPER CASE.
WRITE : / 'String in upper case: ', gv_upper COLOR 6 INVERSE.

gv_lower = p_Str.
TRANSLATE gv_lower to LOWER CASE.
WRITE: / 'Strinf in lower case: ', gv_lower COLOR 5 INVERSE.
