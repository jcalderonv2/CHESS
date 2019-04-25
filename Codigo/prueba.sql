create or replace procedure validateQueen (pinitialCoord varchar2, pfinalCoord varchar2, pColorTurn varchar2, pidActiveBoard number)is
  TYPE indMovement IS RECORD(ID_IND_PIECE varchar2(3),INITIAL_POSITION varchar2(2),FINAL_POSITION varchar2(2));
  initialCoord varchar2(2);
  finalCoord varchar2(2);
  mov indMovement;
  initialCellTake number(1);
  finalCellTake number(1);
  initialCellNumber number(1);
  finalCellNumber number(1);
  initialCellColumn varchar2(1);
  finalCellColumn varchar2(1);
  enemy number(1); -- 0 False, 1 True
  initialColorPiece varchar2(1);
  finalColorPiece varchar2(1);
  freePath number(1) := 0; -- var espec del alfil,  0 False, 1 True
  nextCell varchar2(2);
  nextCellFill number(1);
  i number(1) := 0;
  colorTurn varchar2(1);
  idActiveBoard number(5);

  BEGIN
    initialCoord := pinitialCoord;
    finalCoord := pfinalCoord;
    idActiveBoard := pidActiveBoard;
    colorTurn := pColorTurn;

      SELECT ID_PIECE INTO mov.ID_IND_PIECE FROM BOARD WHERE ID_CELL = initialCoord AND ID_BOARD = idActiveBoard;
      mov.INITIAL_POSITION := initialCoord;
      mov.FINAL_POSITION := finalCoord;

        initialCellNumber := TO_NUMBER(SUBSTR(mov.INITIAL_POSITION,2,1));
        finalCellNumber := TO_NUMBER(SUBSTR(mov.FINAL_POSITION,2,1));
        initialCellColumn := SUBSTR(mov.INITIAL_POSITION,1,1);
        finalCellColumn := SUBSTR(mov.FINAL_POSITION,1,1);

      /*  IF ABS(ascii(initialCellColumn) - ascii(finalCellColumn)) = ABS(initialCellNumber - finalCellNumber) THEN

          freePath := 1;
          IF ascii(initialCellColumn) > ascii(finalCellColumn) AND initialCellNumber < finalCellNumber THEN

            nextCell := CONCAT(chr(ascii(initialCellColumn) - 1), TO_CHAR(initialCellNumber + 1));
            WHILE freePath = 1 AND i < ABS(initialCellNumber - finalCellNumber) LOOP

              SELECT FILL INTO nextCellFill FROM BOARD WHERE ID_CELL = nextCell AND ID_BOARD = idActiveBoard;

              IF nextCellFill = 1 THEN

                freePath := 0;

              END IF;

              nextCell := CONCAT(chr(ascii(SUBSTR(nextCell,1,1)) - 1), TO_CHAR(TO_NUMBER(SUBSTR(nextCell,2,1)) + 1));
              i := i + 1;

            END LOOP;

            IF freePath = 1 THEN

              UPDATE BOARD
              SET ID_PIECE = mov.ID_IND_PIECE,
                  FILL = 1
              WHERE ID_CELL = mov.FINAL_POSITION AND ID_BOARD = idActiveBoard;

              UPDATE BOARD
              SET ID_PIECE = NULL,
                  FILL = 0
              WHERE ID_CELL = mov.INITIAL_POSITION AND ID_BOARD = idActiveBoard;

            ELSE

              dbms_output.put_line('La posicion indicada no puede ser FILL.');

            END IF;

          ELSIF ascii(initialCellColumn) > ascii(finalCellColumn) AND initialCellNumber > finalCellNumber THEN

            nextCell := CONCAT(chr(ascii(initialCellColumn) - 1),TO_CHAR(initialCellNumber - 1));
            WHILE freePath = 1 AND i < ABS(initialCellNumber - finalCellNumber) LOOP

              SELECT FILL INTO nextCellFill FROM BOARD WHERE ID_CELL = nextCell AND ID_BOARD = idActiveBoard;

              IF nextCellFill = 1 THEN

                freePath := 0;

              END IF;

              nextCell := CONCAT(chr(ascii(SUBSTR(nextCell,1,1)) - 1), TO_CHAR(TO_NUMBER(SUBSTR(nextCell,2,1)) - 1));
              i := i + 1;

            END LOOP;

            IF freePath = 1 THEN

              UPDATE BOARD
              SET ID_PIECE = mov.ID_IND_PIECE,
                  FILL = 1
              WHERE ID_CELL = mov.FINAL_POSITION AND  ID_BOARD = idActiveBoard;

              UPDATE BOARD
              SET ID_PIECE = NULL,
                  FILL = 0
              WHERE ID_CELL = mov.INITIAL_POSITION AND ID_BOARD = idActiveBoard;

            ELSE

              dbms_output.put_line('La posicion indicada no puede ser FILL.');

            END IF;

          ELSIF ascii(initialCellColumn) < ascii(finalCellColumn) AND initialCellNumber < finalCellNumber THEN

            nextCell := CONCAT(chr(ascii(initialCellColumn) + 1), TO_CHAR(initialCellNumber + 1));
            WHILE freePath = 1 AND i < ABS(initialCellNumber - finalCellNumber) LOOP

              SELECT FILL INTO nextCellFill FROM BOARD WHERE ID_CELL = nextCell AND ID_BOARD = idActiveBoard;

              IF nextCellFill = 1 THEN

                freePath := 0;

              END IF;

              nextCell := CONCAT(chr(ascii(SUBSTR(nextCell,1,1)) + 1), TO_CHAR(TO_NUMBER(SUBSTR(nextCell,2,1)) + 1));
              i := i + 1;

            END LOOP;

            IF freePath = 1 THEN

              UPDATE BOARD
              SET ID_PIECE = mov.ID_IND_PIECE,
                  FILL = 1
              WHERE ID_CELL = mov.FINAL_POSITION AND ID_BOARD = idActiveBoard;

              UPDATE BOARD
              SET ID_PIECE = NULL,
                  FILL = 0
              WHERE ID_CELL = mov.INITIAL_POSITION AND ID_BOARD = idActiveBoard;

            ELSE

              dbms_output.put_line('La posicion indicada no puede ser FILL.');

            END IF;

          ELSIF ascii(initialCellColumn) < ascii(finalCellColumn) AND initialCellNumber > finalCellNumber THEN

            nextCell := CONCAT(chr(ascii(initialCellColumn) + 1), TO_CHAR(initialCellNumber - 1));
            WHILE freePath = 1 AND i < ABS(initialCellNumber - finalCellNumber) LOOP

              SELECT FILL INTO nextCellFill FROM BOARD WHERE ID_CELL = nextCell AND ID_BOARD = idActiveBoard;

              IF nextCellFill = 1 THEN

                freePath := 0;

              END IF;

              nextCell := CONCAT(chr(ascii(SUBSTR(nextCell,1,1)) + 1), TO_CHAR(TO_NUMBER(SUBSTR(nextCell,2,1)) - 1));
              i := i + 1;

            END LOOP;

            IF freePath = 1 THEN

              UPDATE BOARD
              SET ID_PIECE = mov.ID_IND_PIECE,
                  FILL = 1
              WHERE ID_CELL = mov.FINAL_POSITION AND ID_BOARD = idActiveBoard;

              UPDATE BOARD
              SET ID_PIECE = NULL,
                  FILL = 0
              WHERE ID_CELL = mov.INITIAL_POSITION AND ID_BOARD = idActiveBoard;

            ELSE

              dbms_output.put_line('La posicion indicada no puede ser FILL.');

            END IF;

          END IF;


        ELSE

          dbms_output.put_line('Movimiento no permitido.');

        END IF;*/

    --showBoard(idActiveBoard);
    UPDATE BOARD
              SET ID_PIECE = mov.ID_IND_PIECE,
                  FILL = 1
              WHERE ID_CELL = mov.FINAL_POSITION AND ID_BOARD = idActiveBoard;

              UPDATE BOARD
              SET ID_PIECE = NULL,
                  FILL = 0
              WHERE ID_CELL = mov.INITIAL_POSITION AND ID_BOARD = idActiveBoard;

              IF pColorTurn = 'B' THEN
                UPDATE MOVEMENT set COLOR_TURN_P = 'N' WHERE ID_MOVEMENT = 0;
              ELSE
                UPDATE MOVEMENT set COLOR_TURN_P = 'B' WHERE ID_MOVEMENT = 0;
                end if;

END validateQueen;
/