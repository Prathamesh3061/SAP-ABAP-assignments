*&---------------------------------------------------------------------*
*& Report Y195R020_ASSIGNMENT_20
*&---------------------------------------------------------------------*
*&
*&---------------------------------------------------------------------*
REPORT y195r020_assignment_20.

SELECTION-SCREEN BEGIN OF BLOCK b1 WITH FRAME TITLE TEXT-001.
  PARAMETERS: p_input TYPE i.
SELECTION-SCREEN END OF BLOCK b1.

DATA: gv_start   TYPE i,
      gv_isPrime TYPE c,
      gv_count   TYPE i,
      gv_div     TYPE i,
      gt_primes  TYPE STANDARD TABLE OF i,
      gv_index   TYPE i.
*      gv_primeCount TYPE i.

gv_start = 2.

WHILE gv_count < p_input.


  gv_isPrime = 'Y'.
  gv_div = 2.

  WHILE gv_div < gv_start.
    IF gv_start MOD gv_div = 0.
      gv_isPrime = 'N'.
      EXIT.
    ENDIF.
    gv_div = gv_div + 1.
  ENDWHILE.



  IF gv_isPrime = 'Y'.
    APPEND gv_start TO gt_primes.

*    gv_primeCount = gv_primeCount + 1.

*    WRITE : / 'first',p_input,'prime numbers are:', gv_start.

*    IF gv_primeCount MOD 2 = 0.
*      WRITE : / 'first',p_input,'prime numbers are:', gv_start.
*    ENDIF.

    gv_count = gv_count + 1.
  ENDIF.

  gv_start = gv_start + 1.
ENDWHILE.

WRITE : / 'first',p_input,'prime numbers are:'.
LOOP AT gt_primes INTO gv_start.
  WRITE: gv_start.
ENDLOOP.
SKIP.
ULINE.
WRITE: 'alternate Prime numbers are:'.
gv_index = 1.
LOOP AT gt_primes INTO gv_start.
  IF gv_index MOD 2 = 1.
    WRITE: gv_start.
  ENDIF.
  gv_index = gv_index + 1.
ENDLOOP.


*DATA: gv_div     TYPE i VALUE 2,
*      gv_isPrime TYPE c.
*
*SELECTION-SCREEN BEGIN OF BLOCK b1 WITH FRAME TITLE TEXT-001.
*
*  PARAMETERS : p_from TYPE i,
*               p_to   TYPE i.
*
*SELECTION-SCREEN END OF BLOCK b1.
*
*WHILE p_from <= p_to.
*  gv_div = 2.
*  gv_isPrime = 'Y'.
*
*  IF p_from <= 1.
*    gv_isPrime = 'N'.
*
*  ELSE.
*    WHILE gv_div < p_from.
*      IF p_from MOD gv_div = 0.
*        gv_isPrime = 'N'.
*      ENDIF.
*      gv_div = gv_div + 1.
*    ENDWHILE.
*  ENDIF.
*
*  IF gv_isPrime = 'Y'.
*    WRITE : / p_from , 'Prime number'.
*  ENDIF.
*
*  p_from = p_from + 1.
*  gv_isPrime = 'N'.
*ENDWHILE.
