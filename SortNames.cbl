       IDENTIFICATION DIVISION.
       PROGRAM-ID. sort-names.
       DATA DIVISION.
      *-----------------------------------------------------------------
       WORKING-STORAGE SECTION.
      * Declare 3 2-digit integer variables.
       01 X PIC 99.
       01 Y PIC 99.
       01 Z PIC 99.

       01 ANY-TABLE.
	      05 TABLE-ELEMENT PIC X(10) OCCURS 3 TIMES VALUE "Granny".

      * Declare a name for our table.
       01 WS-TABLE.
      *   Declare 3 table rows.
          05 WS-A OCCURS 3 TIMES.
      *      Declare a 
             10 WS-B PIC A(2).
             10 WS-C OCCURS 2 TIMES.
                15 WS-D PIC X(3).

      * Two-dimensional array
       01 ITEM-RECORD.
         03 ITEM-INFO OCCURS 100 TIMES.
           05 ITEM-CODE PIC S9(7) COMP-3.
           05 ITEM-DESCRIPTION PIC X(24).
           05 ITEM-PRICE PIC S9(3) V99 COMP-3.

      * Three-dimensional array
       01 STORE-RECORD.
         03 STORE-INFO OCCURS 1000 TIMES.
           05 STORE-NO PIC S9 (5) COMP-3.
           05 STORE-STUFF PIC X.
           05 STORE-SALES PIC S9 (5) V99 COMP-3 OCCURS 12 TIMES.

       01 PROGRAM-SUBSCRIPTS.
         03 ST-SUBSCRIPT PIC S9 (9) COMP VALUE +1.
         03 ST-SALES-SUB PIC S9 (9) COMP VALUE +1.
      *-----------------------------------------------------------------
       PROCEDURE DIVISION.

      * Do some math.
       SET X TO 10.
       SET Y TO 25.
       ADD X Y GIVING Z.
       DISPLAY "X + Y = "Z.

      * Move XX into table element 1, beginning at character position 3,
      * for a length of 2 characters.
       MOVE "XX" TO TABLE-ELEMENT (1) (3 : 2).

      * Start here...
       MOVE '12ABCDEF34GHIJKL56MNOPQR' TO WS-TABLE.
       DISPLAY 'WS-TABLE  : ' WS-TABLE.
       DISPLAY 'WS-A(1)   : ' WS-A(1).
       DISPLAY 'WS-C(1,1) : ' WS-C(1,1).
       DISPLAY 'WS-C(1,2) : ' WS-C(1,2).
       DISPLAY 'WS-A(2)   : ' WS-A(2).
       DISPLAY 'WS-C(2,1) : ' WS-C(2,1).
       DISPLAY 'WS-C(2,2) : ' WS-C(2,2).
       DISPLAY 'WS-A(3)   : ' WS-A(3).
       DISPLAY 'WS-C(3,1) : ' WS-C(3,1).
       DISPLAY 'WS-C(3,2) : ' WS-C(3,2).
       STOP RUN.

