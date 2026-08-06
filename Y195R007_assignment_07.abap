*&---------------------------------------------------------------------*
*& Report Y195R007_ASSIGNMENT_07
*&---------------------------------------------------------------------*
*&
*&---------------------------------------------------------------------*
REPORT y195r007_assignment_07.

SELECTION-SCREEN BEGIN OF BLOCK b1 WITH FRAME TITLE TEXT-001.

  PARAMETERS : p_num TYPE i.

SELECTION-SCREEN END OF BLOCK b1.

DATA : gv_count TYPE i VALUE 2,
       gv_isPrime  TYPE i VALUE 0.


IF p_num <= 1.
*      write: p_num , 'not prime number'.
  gv_isPrime = 1.

ELSE.

  WHILE gv_count < p_num.
    IF p_num MOD gv_count = 0.
      gv_isPrime = 1.
*      WRITE: p_num , 'not prime number'.
    ENDIF.
    gv_count = gv_count + 1.
  ENDWHILE.
ENDIF.

IF gv_isPrime = 0.
WRITE : / p_num COLOR COL_POSITIVE, 'is prime number.' COLOR COL_POSITIVE INVERSE.
ELSE.
  WRITE : / p_num COLOR COL_NEGATIVE, 'is not prime number.' COLOR COL_NEGATIVE INVERSE.
ENDIF.