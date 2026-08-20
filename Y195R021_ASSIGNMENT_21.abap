*&---------------------------------------------------------------------*
*& Report Y195R021_ASSIGNMENT_21
*&---------------------------------------------------------------------*
*&
*&---------------------------------------------------------------------*
REPORT y195r021_assignment_21.

DATA : gv_small  TYPE i VALUE 250,
       gv_medium TYPE i VALUE 400,
       gv_large  TYPE i VALUE 600,
       gv_onion TYPE i VALUE 50,
       gv_saus TYPE i VALUE 100,
       gv_exche TYPE i VALUE 80,
       gv_mush TYPE i VALUE 70,
       gv_pepp TYPE i VALUE 120,
       gv_total TYPE i .


SELECTION-SCREEN BEGIN OF BLOCK b1 WITH FRAME TITLE TEXT-001.

  PARAMETERS : rb_small RADIOBUTTON GROUP g1,
               rb_mediu RADIOBUTTON GROUP g1,
               rb_large RADIOBUTTON GROUP g1.

SELECTION-SCREEN END OF BLOCK b1.

SELECTION-SCREEN BEGIN OF BLOCK b2 WITH FRAME TITLE TEXT-002.

  PARAMETERS : cb_onion  AS CHECKBOX,
               cb_saus   AS CHECKBOX,
               cb_exche AS CHECKBOX,
               cb_mushr  AS CHECKBOX,
               cb_pepp   AS CHECKBOX.

SELECTION-SCREEN END OF BLOCK b2.

IF rb_small = 'X'.
  gv_total = gv_small.
  WRITE: / 'Pizza selected small:', gv_total.
ELSEIF rb_mediu = 'X'.
  gv_total = gv_medium.
  WRITE: / 'Pizza selected medium:', gv_total.
ELSEIF rb_large = 'X'.
  gv_total = gv_large.
  WRITE: / 'Pizza selected large:', gv_total.
ENDIF.

SKIP.
ULINE.
SKIP.

WRITE: / 'Added toppings:'.

IF cb_onion = 'X'.
  WRITE: / 'Onion RS-', gv_onion.
  gv_total = gv_total + gv_onion.
ENDIF.

IF cb_exche = 'X'.
WRITE : / 'Extra Cheese RS-', gv_exche.
gv_total = gv_total + gv_exche.
ENDIF.

IF cb_saus = 'X'.
WRITE : / 'Sausage RS-', gv_saus.
gv_total = gv_total + gv_saus.
ENDIF.

IF cb_mushr = 'X'.
WRITE : / 'Mushroom RS-', gv_mush.
gv_total = gv_total + gv_mush.
ENDIF.

IF cb_pepp = 'X'.
WRITE: / 'Pepperoni RS-', gv_pepp.
gv_total = gv_total + gv_pepp.
ENDIF.

SKIP.
ULINE.
SKIP.

WRITE: / 'Total cost: RS', gv_total.
