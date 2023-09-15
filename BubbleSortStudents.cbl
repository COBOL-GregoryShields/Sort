       IDENTIFICATION DIVISION.
       PROGRAM-ID. STUDENT.

       DATA DIVISION. 
       WORKING-STORAGE SECTION.

       01 num-students PIC 99 VALUE 5. 
       01 i            PIC  9. 
       01 j            PIC  9.

      *01 CLASSROOM-TABLE.
      *   05 STUDENT-TABLE.
       01 STUDENT OCCURS 1 TO 1000 TIMES DEPENDING ON num-students. 
          05 STUDENT-NAME      PIC A(25).
          05 STUDENT-AGE       PIC 99. 

       01 TEMP-STUDENT.
          05 TEMP-NAME               PIC A(25).
          05 TEMP-AGE                PIC 99. 

       PROCEDURE DIVISION. 
       MAIN-PARA.
          MOVE "SHARON"    TO STUDENT-NAME (2).
          MOVE 25          TO STUDENT-AGE  (2).

          MOVE "DALE"      TO STUDENT-NAME (1).
          MOVE 21          TO STUDENT-AGE  (1).

          MOVE "CHRISANNE" TO STUDENT-NAME (3).
          MOVE 16          TO STUDENT-AGE  (3).

          MOVE "GREGORY"   TO STUDENT-NAME (4).
          MOVE 87          TO STUDENT-AGE  (4).

          MOVE "ALEX"      TO STUDENT-NAME (5).
          MOVE 12          TO STUDENT-AGE  (5).

          PERFORM PRINT.
          PERFORM SORT-STUDENTS.
          PERFORM PRINT.

       GOBACK.
      *STOP RUN. 

      *-----------------------------------------------------------------
       SORT-STUDENTS.
          PERFORM
              VARYING i FROM 1 BY 1 UNTIL i > num-students
                 DISPLAY 'i = 'i
                 ADD 1 TO i GIVING j
                 PERFORM  UNTIL j > num-students
                    DISPLAY 'j = 'j
                    IF STUDENT-AGE(i) > STUDENT-AGE(j)
                       MOVE STUDENT(i)   TO TEMP-STUDENT
                       MOVE STUDENT(j)   TO STUDENT(i)
                       MOVE TEMP-STUDENT TO STUDENT(j)
                    END-IF
                    ADD 1                TO j
                 PERFORM PRINT
                 END-PERFORM
          END-PERFORM.

       PRINT.
          DISPLAY '1 = 'STUDENT (1)
          DISPLAY '2 = 'STUDENT (2)
          DISPLAY '3 = 'STUDENT (3)
          DISPLAY '4 = 'STUDENT (4)
          DISPLAY '5 = 'STUDENT (5)
          DISPLAY ' '.


      *         DISPLAY "i age is " STUDENT-AGE(i)
      *         DISPLAY "j age is " STUDENT-AGE(j)

