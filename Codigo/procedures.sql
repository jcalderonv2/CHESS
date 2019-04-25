--CHECKS

--King (Rey)
CREATE OR REPLACE PROCEDURE kingCheck(finalCoord varchar2, pID_BOARD number) IS

  finalLetter BOARD.ID_CELL%type;
  finalNumber int;
  piecetype char;
  piece BOARD.ID_PIECE%TYPE;
  cell BOARD.ID_CELL%type;
  playerPiece BOARD.ID_PIECE%TYPE;
  playerColor char;
  pieceColor char;
  status_ BOARD.FILL%type;
  permitted int;
  nextLetter char;
  previousLetter char;
  nextNumber int;
  previousNumber int;
  idCurrentBoard number(5);

  BEGIN

    idCurrentBoard := pID_BOARD;

    SELECT ID_PIECE INTO playerPiece FROM BOARD WHERE ID_CELL = finalCoord AND ID_BOARD = idCurrentBoard;

    playerColor := substr(playerPiece,2,1);
    finalLetter:= substr(finalCoord,1,1);
    finalNumber:= to_number(substr(finalCoord,2));
    permitted := 1;

    IF(finalLetter = 'A' and finalNumber = 1)then

      SELECT ID_PIECE,FILL INTO piece,status_ FROM BOARD WHERE ID_CELL = 'A2' AND ID_BOARD = idCurrentBoard;

      if(status_ = 1) then

        piecetype := substr(piece,1,1);
        pieceColor := substr(piece,2,1);

          if(piecetype = 'R') then

            if(pieceColor  <> playerColor) then

              DBMS_OUTPUT.PUT_LINE('JAQUE');

            end if;

          end if;

        end if;

      SELECT ID_PIECE, FILL INTO piece, status_ FROM BOARD WHERE ID_CELL = 'B1' AND ID_BOARD = idCurrentBoard;

      if(status_ = 1) then

        piecetype := substr(piece,1,1);
        pieceColor := substr(piece,2,1);

          if(piecetype = 'R') then

            if(pieceColor  <> playerColor) then

              DBMS_OUTPUT.PUT_LINE('JAQUE');

            end if;

          end if;

      end if;

      SELECT ID_PIECE, FILL INTO piece, status_ FROM BOARD WHERE ID_CELL = 'B2' AND ID_BOARD = idCurrentBoard;

        if(status_ = 1) then

          piecetype := substr(piece,1,1);
          pieceColor := substr(piece,2,1);

            if(piecetype = 'R') then

              if(pieceColor  <> playerColor) then

                DBMS_OUTPUT.PUT_LINE('JAQUE');

              end if;

            end if;

        end if;

    end if;

    IF(finalLetter = 'A' and finalNumber = 8) then

      SELECT ID_PIECE, FILL INTO piece, status_ FROM BOARD WHERE ID_CELL = 'A7' AND ID_BOARD = idCurrentBoard;

        if(status_ = 1) then

          piecetype := substr(piece,1,1);
          pieceColor := substr(piece,2,1);

          if(piecetype = 'R') then

            if(pieceColor  <> playerColor) then

              DBMS_OUTPUT.PUT_LINE('JAQUE');

              end if;

            end if;

        end if;

      SELECT ID_PIECE, FILL INTO piece, status_ FROM BOARD WHERE ID_CELL = 'B8' AND ID_BOARD = idCurrentBoard;

        if(status_ = 1) then

          piecetype := substr(piece,1,1);
          pieceColor := substr(piece,2,1);

            if(piecetype = 'R') then

              if(pieceColor  <> playerColor) then

                DBMS_OUTPUT.PUT_LINE('JAQUE');

              end if;

            end if;

        end if;

      SELECT ID_PIECE, FILL INTO piece, status_ FROM BOARD WHERE ID_CELL = 'B7' AND ID_BOARD = idCurrentBoard;

        if(status_ = 1) then

          piecetype := substr(piece,1,1);
          pieceColor := substr(piece,2,1);

            if(piecetype = 'R') then

              if(pieceColor  <> playerColor) then

                DBMS_OUTPUT.PUT_LINE('JAQUE');

              end if;

            end if;

        end if;

    end if;

    IF(finalLetter = 'H' and finalNumber = 1) then

      SELECT ID_PIECE, FILL INTO piece ,status_ FROM BOARD WHERE ID_CELL = 'H2' AND ID_BOARD = idCurrentBoard;

        if(status_ = 1) then

          piecetype := substr(piece,1,1);
          pieceColor := substr(piece,2,1);

            if(piecetype = 'R') then

              if(pieceColor  <> playerColor) then

                DBMS_OUTPUT.PUT_LINE('JAQUE');

              end if;

            end if;

        end if;

      SELECT ID_PIECE, FILL INTO piece, status_ FROM BOARD WHERE ID_CELL = 'G2' AND ID_BOARD = idCurrentBoard;

        if(status_ = 1) then

          piecetype := substr(piece,1,1);
          pieceColor := substr(piece,2,1);

            if(piecetype = 'R') then

              if(pieceColor  <> playerColor) then

                DBMS_OUTPUT.PUT_LINE('JAQUE');

              end if;

            end if;

        end if;

      SELECT ID_PIECE,FILL INTO piece,status_ FROM BOARD WHERE ID_CELL = 'G1' AND ID_BOARD = idCurrentBoard;

        if(status_ = 1) then

          piecetype := substr(piece,1,1);
          pieceColor := substr(piece,2,1);

            if(piecetype = 'R') then

              if(pieceColor  <> playerColor) then

                DBMS_OUTPUT.PUT_LINE('JAQUE');

              end if;

            end if;

        end if;

    end if;

    IF(finalLetter = 'H' and finalNumber = 8) then

    SELECT ID_PIECE, FILL INTO piece, status_ FROM BOARD WHERE ID_CELL = 'H7' AND ID_BOARD = idCurrentBoard;

      if(status_ = 1) then

        piecetype := substr(piece,1,1);
        pieceColor := substr(piece,2,1);

          if(piecetype = 'R') then

            if(pieceColor  <> playerColor) then

              DBMS_OUTPUT.PUT_LINE('JAQUE');

            end if;

          end if;

      end if;

      SELECT ID_PIECE, FILL INTO piece, status_ FROM BOARD WHERE ID_CELL = 'G8' AND ID_BOARD = idCurrentBoard;

        if(status_ = 1) then
        
          piecetype := substr(piece,1,1);
          pieceColor := substr(piece,2,1);

            if(piecetype = 'R') then

              if(pieceColor  <> playerColor) then

                DBMS_OUTPUT.PUT_LINE('JAQUE');

              end if;

            end if;

        end if;

      SELECT ID_PIECE, FILL INTO piece, status_ FROM BOARD WHERE ID_CELL = 'G7' AND ID_BOARD = idCurrentBoard;

        if(status_ = 1) then

          piecetype := substr(piece,1,1);
          pieceColor := substr(piece,2,1);

            if(piecetype = 'R') then

              if(pieceColor  <> playerColor) then

                DBMS_OUTPUT.PUT_LINE('JAQUE');

              end if;

            end if;

        end if;

    end if;

    IF(finalLetter <> 'A' and finalLetter <> 'H' and finalNumber = 1) then

      nextLetter := (chr(ascii(finalLetter) + 1));
      previousLetter := (chr(ascii(finalLetter) - 1));
      previousNumber := finalNumber + 1;
      cell := (previousLetter || finalNumber);

      SELECT ID_PIECE, FILL INTO piece, status_ FROM BOARD WHERE ID_CELL = cell AND ID_BOARD = idCurrentBoard;

        if(status_ = 1) then

        piecetype := substr(piece,1,1);
          pieceColor := substr(piece,2,1);

          if(piecetype = 'R') then

            if(pieceColor  <> playerColor) then

              DBMS_OUTPUT.PUT_LINE('JAQUE');

            end if;
            
          end if;

      end if;

      cell := (nextLetter || finalNumber);

      SELECT ID_PIECE, FILL INTO piece, status_ FROM BOARD WHERE ID_CELL = cell AND ID_BOARD = idCurrentBoard;

        if(status_ = 1) then

          piecetype := substr(piece,1,1);
          pieceColor := substr(piece,2,1);

            if(piecetype = 'R') then

              if(pieceColor  <> playerColor) then

                DBMS_OUTPUT.PUT_LINE('JAQUE');
              end if;

            end if;

        end if;

      cell := (previousLetter || previousNumber);

      SELECT ID_PIECE, FILL INTO piece, status_ FROM BOARD WHERE ID_CELL = cell AND ID_BOARD = idCurrentBoard;

        if(status_ = 1) then

          piecetype := substr(piece,1,1);
          pieceColor := substr(piece,2,1);

            if(piecetype = 'R') then

              if(pieceColor  <> playerColor) then

                DBMS_OUTPUT.PUT_LINE('JAQUE');

              end if;

            end if;

        end if;

      cell := (nextLetter || previousNumber);

      SELECT ID_PIECE, FILL INTO piece, status_ FROM BOARD WHERE ID_CELL = cell AND ID_BOARD = idCurrentBoard;

        if(status_ = 1) then

          piecetype := substr(piece,1,1);
          pieceColor := substr(piece,2,1);

            if(piecetype = 'R') then

              if(pieceColor  <> playerColor) then

                DBMS_OUTPUT.PUT_LINE('JAQUE');

              end if;

            end if;

        end if;

      cell := (finalLetter || previousNumber);

      SELECT ID_PIECE, FILL INTO piece, status_ FROM BOARD WHERE ID_CELL = cell AND ID_BOARD = idCurrentBoard;

        if(status_ = 1) then

          piecetype := substr(piece,1,1);
          pieceColor := substr(piece,2,1);

            if(piecetype = 'R') then

              if(pieceColor  <> playerColor) then

                DBMS_OUTPUT.PUT_LINE('JAQUE');

              end if;

            end if;

          end if;

    end if;

    IF(finalLetter <> 'A' and finalLetter <> 'H' and finalNumber = 8) then

      nextLetter := (chr(ascii(finalLetter) + 1));
      previousLetter := (chr(ascii(finalLetter) - 1));
      nextNumber := finalNumber - 1;
      cell := (previousLetter || finalNumber);

      SELECT ID_PIECE, FILL INTO piece, status_ FROM BOARD WHERE ID_CELL = cell AND ID_BOARD = idCurrentBoard;

        if(status_ = 1) then

          piecetype := substr(piece,1,1);
          pieceColor := substr(piece,2,1);

            if(piecetype = 'R') then

              if(pieceColor  <> playerColor) then

                DBMS_OUTPUT.PUT_LINE('JAQUE');

              end if;

            end if;

        end if;

      cell := (nextLetter || finalNumber);

      SELECT ID_PIECE, FILL INTO piece, status_ FROM BOARD WHERE ID_CELL = cell AND ID_BOARD = idCurrentBoard;

        if(status_ = 1) then

          piecetype := substr(piece,1,1);
          pieceColor := substr(piece,2,1);

            if(piecetype = 'R') then

              if(pieceColor  <> playerColor) then

                DBMS_OUTPUT.PUT_LINE('JAQUE');

              end if;

            end if;

        end if;

      cell := (previousLetter || nextNumber);

      SELECT ID_PIECE, FILL INTO piece, status_ FROM BOARD WHERE ID_CELL = cell AND ID_BOARD = idCurrentBoard;

        if(status_ = 1) then

          piecetype := substr(piece,1,1);
          pieceColor := substr(piece,2,1);

            if(piecetype = 'R') then

              if(pieceColor  <> playerColor) then

                DBMS_OUTPUT.PUT_LINE('JAQUE');

              end if;

            end if;

        end if;

      cell := (nextLetter || nextNumber);

      SELECT ID_PIECE, FILL INTO piece, status_ FROM BOARD WHERE ID_CELL = cell AND ID_BOARD = idCurrentBoard;

        if(status_ = 1) then

          piecetype := substr(piece,1,1);
          pieceColor := substr(piece,2,1);

            if(piecetype = 'R') then

              if(pieceColor  <> playerColor) then

                DBMS_OUTPUT.PUT_LINE('JAQUE');

              end if;

            end if;

        end if;

      cell := (finalLetter || nextNumber);

      SELECT ID_PIECE, FILL INTO piece, status_ FROM BOARD WHERE ID_CELL = cell AND ID_BOARD = idCurrentBoard;

        if(status_ = 1) then

          piecetype := substr(piece,1,1);
          pieceColor := substr(piece,2,1);

            if(piecetype = 'R') then

              if(pieceColor  <> playerColor) then

                DBMS_OUTPUT.PUT_LINE('JAQUE');

              end if;

            end if;

        end if;
        
    end if;

    IF(finalNumber <> 1 and finalNumber <> 8 and finalLetter = 'H') then

    previousLetter := (chr(ascii(finalLetter) - 1));
    nextNumber := finalNumber - 1;
    previousNumber := finalNumber + 1;
    cell := (previousLetter || finalNumber);

      SELECT ID_PIECE, FILL INTO piece, status_ FROM BOARD WHERE ID_CELL = cell AND ID_BOARD = idCurrentBoard;

        if(status_ = 1) then

          piecetype := substr(piece,1,1);
          pieceColor := substr(piece,2,1);

            if(piecetype = 'R') then

              if(pieceColor  <> playerColor) then

                DBMS_OUTPUT.PUT_LINE('JAQUE');

              end if;

            end if;

        end if;

      cell := (finalLetter || nextNumber);

      SELECT ID_PIECE, FILL INTO piece, status_ FROM BOARD WHERE ID_CELL = cell AND ID_BOARD = idCurrentBoard;
      
        if(status_ = 1) then

          piecetype := substr(piece,1,1);
          pieceColor := substr(piece,2,1);

            if(piecetype = 'R') then

              if(pieceColor  <> playerColor) then

                DBMS_OUTPUT.PUT_LINE('JAQUE');

              end if;

            end if;

        end if;

      cell:= (finalLetter||nextNumber);

      SELECT ID_PIECE, FILL INTO piece, status_ FROM BOARD WHERE ID_CELL = cell AND ID_BOARD = idCurrentBoard;

        if(status_ = 1) then

          piecetype := substr(piece,1,1);
          pieceColor := substr(piece,2,1);

            if(piecetype = 'R') then

              if(pieceColor  <> playerColor) then

                DBMS_OUTPUT.PUT_LINE('JAQUE');

              end if;

            end if;

        end if;

      cell := (finalLetter || nextNumber);

      SELECT ID_PIECE, FILL INTO piece, status_ FROM BOARD WHERE ID_CELL = cell AND ID_BOARD = idCurrentBoard;

        if(status_ = 1) then

          piecetype := substr(piece,1,1);
          pieceColor := substr(piece,2,1);

            if(piecetype = 'R') then

              if(pieceColor  <> playerColor) then

                DBMS_OUTPUT.PUT_LINE('JAQUE');

              end if;

            end if;

        end if;

      cell := (finalLetter || previousNumber);

      SELECT ID_PIECE, FILL INTO piece, status_ FROM BOARD WHERE ID_CELL = cell AND ID_BOARD = idCurrentBoard;

        if(status_ = 1) then

          piecetype := substr(piece,1,1);
          pieceColor := substr(piece,2,1);

            if(piecetype = 'R') then

              if(pieceColor  <> playerColor) then

                DBMS_OUTPUT.PUT_LINE('JAQUE');

              end if;

            end if;

        end if;

      cell := (previousLetter || nextNumber);

      SELECT ID_PIECE, FILL INTO piece, status_ FROM BOARD WHERE ID_CELL = cell AND ID_BOARD = idCurrentBoard;

        if(status_ = 1) then

          piecetype := substr(piece,1,1);
          pieceColor := substr(piece,2,1);

            if(piecetype = 'R') then

              if(pieceColor  <> playerColor) then

                DBMS_OUTPUT.PUT_LINE('JAQUE');

              end if;

            end if;

        end if;

      cell := (previousLetter || previousNumber);

      SELECT ID_PIECE, FILL INTO piece, status_ FROM BOARD WHERE ID_CELL = cell AND ID_BOARD = idCurrentBoard;

        if(status_ = 1) then

          piecetype := substr(piece,1,1);
          pieceColor := substr(piece,2,1);

            if(piecetype = 'R') then

              if(pieceColor  <> playerColor) then

                DBMS_OUTPUT.PUT_LINE('JAQUE');
                          
              end if;

            end if;

        end if;

    end if;

    IF(finalNumber <> 1 and finalNumber <> 8 and finalLetter = 'A') then

    nextNumber := finalNumber - 1;
    previousNumber := finalNumber + 1;
    nextLetter := (chr(ascii(finalLetter) + 1));
    cell := (nextLetter || finalNumber);

      SELECT ID_PIECE, FILL INTO piece, status_ FROM BOARD WHERE ID_CELL = cell AND ID_BOARD = idCurrentBoard;

        if(status_ = 1) then

          piecetype := substr(piece,1,1);
          pieceColor := substr(piece,2,1);

            if(piecetype = 'R') then

              if(pieceColor  <> playerColor) then

                DBMS_OUTPUT.PUT_LINE('JAQUE');

              end if;

            end if;

        end if;

      cell := (nextLetter || previousNumber);

      SELECT ID_PIECE, FILL INTO piece, status_ FROM BOARD WHERE ID_CELL = cell AND ID_BOARD = idCurrentBoard;

        if(status_ = 1) then

          piecetype := substr(piece,1,1);
          pieceColor := substr(piece,2,1);

            if(piecetype = 'R') then

              if(pieceColor  <> playerColor) then

                DBMS_OUTPUT.PUT_LINE('JAQUE');

              end if;

            end if;

        end if;

      cell := (nextLetter || nextNumber);

      SELECT ID_PIECE, FILL INTO piece, status_ FROM BOARD WHERE ID_CELL = cell AND ID_BOARD = idCurrentBoard;

        if(status_ = 1) then

          piecetype := substr(piece,1,1);
          pieceColor := substr(piece,2,1);

            if(piecetype = 'R') then

              if(pieceColor  <> playerColor)then

                DBMS_OUTPUT.PUT_LINE('JAQUE');

              end if;

            end if;

        end if;

      cell := (finalLetter || nextNumber);

      SELECT ID_PIECE, FILL INTO piece, status_ FROM BOARD WHERE ID_CELL = cell AND ID_BOARD = idCurrentBoard;

        if(status_ = 1) then

          piecetype := substr(piece,1,1);
          pieceColor := substr(piece,2,1);

            if(piecetype = 'R') then

              if(pieceColor  <> playerColor) then

                DBMS_OUTPUT.PUT_LINE('JAQUE');

              end if;

            end if;

        end if;

      cell := (finalLetter || previousNumber);

      SELECT ID_PIECE, FILL INTO piece, status_ FROM BOARD WHERE ID_CELL = cell AND ID_BOARD = idCurrentBoard;

        if(status_ = 1) then

          piecetype := substr(piece,1,1);
          pieceColor := substr(piece,2,1);

            if(piecetype = 'R') then

              if(pieceColor  <> playerColor) then

                DBMS_OUTPUT.PUT_LINE('JAQUE');

              end if;

            end if;

        end if;

    end if;

    IF(finalNumber <> 1 and finalNumber <> 8 and finalLetter <> 'H' and finalLetter <> 'A') then

    nextNumber := finalNumber - 1;
    previousNumber := finalNumber + 1;
    nextLetter := (chr(ascii(finalLetter) + 1));
    previousLetter := (chr(ascii(finalLetter) - 1));
    cell := (finalLetter || nextNumber);

      SELECT ID_PIECE, FILL INTO piece, status_ FROM BOARD WHERE ID_CELL = cell AND ID_BOARD = idCurrentBoard;

        if(status_ = 1) then

          piecetype := substr(piece,1,1);
          pieceColor := substr(piece,2,1);

            if(piecetype = 'R') then

              if(pieceColor  <> playerColor) then

                DBMS_OUTPUT.PUT_LINE('JAQUE');

              end if;

            end if;

        end if;

      cell := (finalLetter || previousNumber);

      SELECT ID_PIECE, FILL INTO piece, status_ FROM BOARD WHERE ID_CELL = cell AND ID_BOARD = idCurrentBoard;

        if(status_ = 1) then
        
          piecetype := substr(piece,1,1);
          pieceColor := substr(piece,2,1);

            if(piecetype = 'R') then

              if(pieceColor  <> playerColor) then

                DBMS_OUTPUT.PUT_LINE('JAQUE');

              end if;

            end if;
            
        end if;

      cell := (previousLetter || finalNumber);

      SELECT ID_PIECE,FILL INTO piece,status_ FROM BOARD WHERE ID_CELL = cell AND ID_BOARD = idCurrentBoard;

        if(status_ = 1) then

          piecetype := substr(piece,1,1);
          pieceColor := substr(piece,2,1);

            if(piecetype = 'R') then

              if(pieceColor  <> playerColor) then

                DBMS_OUTPUT.PUT_LINE('JAQUE');

              end if;

            end if;

        end if;

      cell := (previousLetter || nextNumber);

      SELECT ID_PIECE,FILL INTO piece,status_ FROM BOARD WHERE ID_CELL = cell AND ID_BOARD = idCurrentBoard;

        if(status_ = 1) then
        
          piecetype := substr(piece,1,1);
          pieceColor := substr(piece,2,1);

            if(piecetype = 'R') then

              if(pieceColor  <> playerColor) then

                DBMS_OUTPUT.PUT_LINE('JAQUE');

              end if;

            end if;

        end if;

      cell := (previousLetter || previousNumber);
      
      SELECT ID_PIECE, FILL INTO piece, status_ FROM BOARD WHERE ID_CELL = cell AND ID_BOARD = idCurrentBoard;

        if(status_ = 1) then

          piecetype := substr(piece,1,1);
          pieceColor := substr(piece,2,1);

            if(piecetype = 'R') then

              if(pieceColor  <> playerColor) then

                DBMS_OUTPUT.PUT_LINE('JAQUE');

              end if;

            end if;

        end if;

      cell := (nextLetter || finalNumber);

      SELECT ID_PIECE,FILL INTO piece,status_ FROM BOARD WHERE ID_CELL = cell AND ID_BOARD = idCurrentBoard;

        if(status_ = 1) then

          piecetype := substr(piece,1,1);
          pieceColor := substr(piece,2,1);

            if(piecetype = 'R') then

              if(pieceColor  <> playerColor) then

                DBMS_OUTPUT.PUT_LINE('JAQUE');

              end if;

            end if;

        end if;

      cell := (nextLetter || nextNumber);

      SELECT ID_PIECE, FILL INTO piece, status_ FROM BOARD WHERE ID_CELL = cell AND ID_BOARD = idCurrentBoard;

        if(status_ = 1) then

          piecetype := substr(piece,1,1);
          pieceColor := substr(piece,2,1);

            if(piecetype = 'R') then

              if(pieceColor  <> playerColor) then

                DBMS_OUTPUT.PUT_LINE('JAQUE');

              end if;

            end if;

        end if;

      cell:= (nextLetter||previousNumber);

      SELECT ID_PIECE,FILL INTO piece,status_ FROM BOARD WHERE ID_CELL = cell AND ID_BOARD = idCurrentBoard;

        if(status_ = 1) then

          piecetype := substr(piece,1,1);
          pieceColor := substr(piece,2,1);

            if(piecetype = 'R') then

              if(pieceColor  <> playerColor) then

                DBMS_OUTPUT.PUT_LINE('JAQUE');

              end if;

            end if;

        end if;

    end if;

END kingCheck;
/
--Queen (Reina)
--Pawn (Peon)
--Rook (Torre)
create or replace procedure rookCheck (finalCoord varchar2,pID_BOARD number) is
      finalLetter BOARD.ID_CELL%type;
      piece BOARD.ID_PIECE%TYPE;
      cell BOARD.ID_CELL%type;
      playerPiece BOARD.ID_PIECE%TYPE;
      stateCell BOARD.FILL%type;
      
      finalNumber   int;
      pieceType char;
      pieceColor char;
      playerColor char;
      valid int;
      destinationLetter char;
      previousLetter char;
      nextCell int;
      idActiveBoard number(5);
      previousCell int;
   Begin
    idActiveBoard := pID_BOARD;
    select ID_PIECE into playerPiece from BOARD where ID_CELL = finalCoord AND ID_BOARD = idActiveBoard;
    playerColor := substr(playerPiece,2,1);
    finalLetter:= substr(finalCoord,1,1);
    finalNumber:= to_number(substr(finalCoord,2));
    valid := 1;
    nextCell := (finalNumber + 1);
    previousCell := (finalNumber - 1);
    destinationLetter := (chr(ascii(finalLetter) + 1));
    previousLetter := (chr(ascii(finalLetter) - 1));
    if(finalNumber = 1)then
       FOR I IN 2..8 LOOP
        cell := (finalLetter || I);
           select ID_PIECE,FILL into piece,stateCell from BOARD where ID_CELL = cell AND ID_BOARD = idActiveBoard;
           IF (stateCell = 1)then
               pieceType := substr(piece,1,1);
               pieceColor := substr(piece,2,1);
               if(pieceType = 'R')then
                 if(pieceColor  <> playerColor AND valid = 1)then
                      DBMS_OUTPUT.PUT_LINE('JAQUE');
                      valid := 0;
                  end if;
               else
                  valid := 0;
               end if;
           end if;
       END LOOP;
    else
    valid := 1;
     FOR I IN nextCell..8 LOOP
        cell := (finalLetter || I);
           select ID_PIECE,FILL into piece,stateCell from BOARD where ID_CELL = cell AND ID_BOARD = idActiveBoard;
           IF (stateCell = 1)then
               pieceType := substr(piece,1,1);
               pieceColor := substr(piece,2,1);
               if(pieceType = 'R')then
                 if(pieceColor  <> playerColor AND valid = 1)then
                      DBMS_OUTPUT.PUT_LINE('JAQUE');
                      valid := 0;
                  end if;
               else
                  valid := 0;
               end if;
           end if;
       END LOOP;
    end if;
    valid := 1;
    if(finalNumber = 8)then
       FOR I IN reverse 7..1 LOOP
        cell := (finalLetter || I);
           select ID_PIECE,FILL into piece,stateCell from BOARD where ID_CELL = cell AND ID_BOARD = idActiveBoard;
           IF (stateCell = 1)then
               pieceType := substr(piece,1,1);
               pieceColor := substr(piece,2,1);
               if(pieceType = 'R')then
                 if(pieceColor  <> playerColor AND valid = 1)then
                      DBMS_OUTPUT.PUT_LINE('JAQUE');
                  end if;
               else
                  valid := 0;
               end if;
           end if;
       END LOOP;
      else
         valid := 1;
         FOR I IN REVERSE 1..previousCell LOOP
            cell := (finalLetter || I);
               select ID_PIECE,FILL into piece,stateCell from BOARD where ID_CELL = cell AND ID_BOARD = idActiveBoard;
               IF (stateCell = 1)then
                     pieceType := substr(piece,1,1);
                     pieceColor := substr(piece,2,1);
                     if(pieceType = 'R')then
                     if(pieceColor  <> playerColor AND valid = 1)then
                           DBMS_OUTPUT.PUT_LINE('JAQUE');
                           valid := 0;
                        end if;
                     else
                        valid := 0;
                     end if;
               end if;
            END LOOP;
         end if;
         if(finalLetter = 'A')then
            valid := 1;
            FOR a IN ASCII('B')..ASCII('H') LOOP
            cell := (chr(a) || finalNumber);
               select ID_PIECE,FILL into piece,stateCell from BOARD where ID_CELL = cell AND ID_BOARD = idActiveBoard;
               IF (stateCell = 1)then
                     pieceType := substr(piece,1,1);
                     pieceColor := substr(piece,2,1);
                     if(pieceType = 'R')then
                     if(pieceColor  <> playerColor AND valid = 1)then
                           DBMS_OUTPUT.PUT_LINE('JAQUE');
                        end if;
                     else
                        valid := 0;
                     end if;
               end if;
            END LOOP;
         else
            valid := 1;
            FOR a IN ASCII(destinationLetter)..ASCII('H') LOOP
            cell := (chr(a) || finalNumber);
               select ID_PIECE,FILL into piece,stateCell from BOARD where ID_CELL = cell AND ID_BOARD = idActiveBoard;
               IF (stateCell = 1)then
                     pieceType := substr(piece,1,1);
                     pieceColor := substr(piece,2,1);
                     if(pieceType = 'R')then
                     if(pieceColor  <> playerColor AND valid = 1)then
                           DBMS_OUTPUT.PUT_LINE('JAQUE');
                        end if;
                     else
                        valid := 0;
                     end if;
               end if;
            END LOOP;
         end if;
         if(finalLetter = 'H')then
            valid := 1;
            FOR a IN REVERSE ASCII('G')..ASCII('A') LOOP
            cell := (chr(a) || finalNumber);
               select ID_PIECE,FILL into piece,stateCell from BOARD where ID_CELL = cell AND ID_BOARD = idActiveBoard;
               IF (stateCell = 1)then
                     pieceType := substr(piece,1,1);
                     pieceColor := substr(piece,2,1);
                     if(pieceType = 'R')then
                     if(pieceColor  <> playerColor AND valid = 1)then
                           DBMS_OUTPUT.PUT_LINE('JAQUE');
                        end if;
                     else
                        valid := 0;
                     end if;
               end if;
            END LOOP;
         else
            valid := 1;
            FOR a IN REVERSE ASCII('previousLetter')..ASCII('A') LOOP
            cell := (chr(a) || finalNumber);
               select ID_PIECE,FILL into piece,stateCell from BOARD where ID_CELL = cell AND ID_BOARD = idActiveBoard;
               IF (stateCell = 1)then
                     pieceType := substr(piece,1,1);
                     pieceColor := substr(piece,2,1);
                     if(pieceType = 'R')then
                     if(pieceColor  <> playerColor AND valid = 1)then
                           DBMS_OUTPUT.PUT_LINE('JAQUE');
                        end if;
                     else
                        valid := 0;
                     end if;
               end if;
            END LOOP;
         end if;
end rookCheck;
/
--Bishop (Alfil)
--Horse (Caballo)
create or replace procedure horseCheck (finalCoord varchar2,actualBoardId number) is
         finalLetter BOARD.ID_CELL%type;
         finalNumber int;
         pieceType char;
         piece BOARD.ID_PIECE%TYPE;
         cell BOARD.ID_CELL%type;
         playerPiece BOARD.ID_PIECE%TYPE;
         playerColor char;
         pieceColor char;
         state BOARD.FILL%type;
         permited int;
         contadorN int;
         contadorL int;
         nextLetter char;
         beforeLetter char;
  begin
        contadorN := 0;
        contadorL := 0;
        finalLetter:= substr(finalCoord,1,1);
        finalNumber:= to_number(substr(finalCoord,2));
        permited := 1;
        nextLetter := (chr(ascii(finalLetter) + 1));
        beforeLetter := (chr(ascii(finalLetter) - 1));
        select ID_PIECE into playerPiece from BOARD where ID_CELL = finalCoord AND ID_BOARD = actualBoardId;
        playerColor := substr(playerPiece,2,1);
        IF(finalLetter = 'A' and finalNumber = 1)then
           select ID_PIECE,FILL into piece,state from BOARD where ID_CELL = 'B3' AND ID_BOARD = actualBoardId;
           if(state = 1)then
               pieceType := substr(piece,1,1);
               pieceColor := substr(piece,2,1);
               if (pieceType = 'r')then
                 if(pieceColor  <> playerColor)then
                      DBMS_OUTPUT.PUT_LINE('JAQUE');
                  end if;
              end if;
           end if;
           select ID_PIECE,FILL into piece,state from BOARD where ID_CELL = 'C2' AND ID_BOARD = actualBoardId;
           if(state = 1)then
               pieceType := substr(piece,1,1);
               pieceColor := substr(piece,2,1);
               if (pieceType = 'r')then
                 if(pieceColor  <> playerColor)then
                      DBMS_OUTPUT.PUT_LINE('JAQUE');
                  end if;
              end if;
           end if;
        end if;
        IF(finalLetter = 'A' and finalNumber = 8)then
           select ID_PIECE,FILL into piece,state from BOARD where ID_CELL = 'B6' AND ID_BOARD = actualBoardId;
           if(state = 1)then
               pieceType := substr(piece,1,1);
               pieceColor := substr(piece,2,1);
               if (pieceType = 'r')then
                 if(pieceColor  <> playerColor)then
                      DBMS_OUTPUT.PUT_LINE('JAQUE');
                  end if;
               end if;
           end if;
            select ID_PIECE,FILL into piece,state from BOARD where ID_CELL = 'C7' AND ID_BOARD = actualBoardId;
           if(state = 1)then
               pieceType := substr(piece,1,1);
               pieceColor := substr(piece,2,1);
               if (pieceType = 'r')then
                 if(pieceColor  <> playerColor)then
                      DBMS_OUTPUT.PUT_LINE('JAQUE');
                  end if;
               end if;
           end if;
        end if;
        IF(finalLetter = 'H' and finalNumber = 1)then
          select ID_PIECE,FILL into piece,state from BOARD where ID_CELL = 'G3' AND ID_BOARD = actualBoardId;
           if(state = 1)then
               pieceType := substr(piece,1,1);
               pieceColor := substr(piece,2,1);
               if (pieceType = 'r')then
                 if(pieceColor  <> playerColor)then
                      DBMS_OUTPUT.PUT_LINE('JAQUE');
                  end if;
               end if;
           end if;
            select ID_PIECE,FILL into piece,state from BOARD where ID_CELL = 'F2' AND ID_BOARD = actualBoardId;
            if(state = 1)then
               pieceType := substr(piece,1,1);
               pieceColor := substr(piece,2,1);
               if (pieceType = 'r')then
                 if(pieceColor  <> playerColor)then
                      DBMS_OUTPUT.PUT_LINE('JAQUE');
                  end if;
               end if;
           end if;
        end if;
        IF(finalLetter = 'H' and finalNumber = 8)then
           select ID_PIECE,FILL into piece,state from BOARD where ID_CELL = 'G6' AND ID_BOARD = actualBoardId;
           if(state = 1)then
               pieceType := substr(piece,1,1);
               pieceColor := substr(piece,2,1);
               if (pieceType = 'r')then
                 if(pieceColor  <> playerColor)then
                      DBMS_OUTPUT.PUT_LINE('JAQUE');
                  end if;
               end if;
           end if;
           select ID_PIECE,FILL into piece,state from BOARD where ID_CELL = 'F7' AND ID_BOARD = actualBoardId;
           if(state = 1)then
               pieceType := substr(piece,1,1);
               pieceColor := substr(piece,2,1);
               if (pieceType = 'r')then
                 if(pieceColor  <> playerColor)then
                      DBMS_OUTPUT.PUT_LINE('JAQUE');
                  end if;
               end if;
           end if;
        end if;
        IF(finalNumber = 1 and finalLetter <> 'A' and finalLetter <> 'H')then
            cell := (nextLetter||3);
             select ID_PIECE,FILL into piece,state from BOARD where ID_CELL = cell AND ID_BOARD = actualBoardId;
             if(state = 1)then
               pieceType := substr(piece,1,1);
               pieceColor := substr(piece,2,1);
               if (pieceType = 'r')then
                 if(pieceColor  <> playerColor)then
                      DBMS_OUTPUT.PUT_LINE('JAQUE');
                  end if;
               end if;
           end if;
            cell := (beforeLetter||3);
             select ID_PIECE,FILL into piece,state from BOARD where ID_CELL = cell AND ID_BOARD = actualBoardId;
             if(state = 1)then
               pieceType := substr(piece,1,1);
               pieceColor := substr(piece,2,1);
               if (pieceType = 'r')then
                 if(pieceColor  <> playerColor)then
                      DBMS_OUTPUT.PUT_LINE('JAQUE');
                  end if;
               end if;
           end if;
           IF(finalLetter <> 'G')then
                 nextLetter := (chr(ascii(finalLetter) + 2));
                 cell := (nextLetter||2);
                 select ID_PIECE,FILL into piece,state from BOARD where ID_CELL = cell AND ID_BOARD = actualBoardId;
            if(state = 1)then
               pieceType := substr(piece,1,1);
               pieceColor := substr(piece,2,1);
               if (pieceType = 'r')then
                 if(pieceColor  <> playerColor)then
                      DBMS_OUTPUT.PUT_LINE('JAQUE');
                  end if;
               end if;
           end if;
         end if;
           IF(finalLetter <> 'B')then
                 beforeLetter := (chr(ascii(finalLetter) - 2));
                 cell := (nextLetter||2);
                 select ID_PIECE,FILL into piece,state from BOARD where ID_CELL = cell AND ID_BOARD = actualBoardId;
            if(state = 1)then
               pieceType := substr(piece,1,1);
               pieceColor := substr(piece,2,1);
               if (pieceType = 'r')then
                 if(pieceColor  <> playerColor)then
                      DBMS_OUTPUT.PUT_LINE('JAQUE');
                  end if;
               end if;
           end if;
         end if;
      end if;
        IF(finalNumber = 8 and finalLetter <> 'A' AND finalLetter <> 'H')then
           cell := (nextLetter||6);
             select ID_PIECE,FILL into piece,state from BOARD where ID_CELL = cell AND ID_BOARD = actualBoardId;
             if(state = 1)then
               pieceType := substr(piece,1,1);
               pieceColor := substr(piece,2,1);
               if (pieceType = 'r')then
                 if(pieceColor  <> playerColor)then
                      DBMS_OUTPUT.PUT_LINE('JAQUE');
                  end if;
               end if;
           end if;
           cell := (beforeLetter||6);
             select ID_PIECE,FILL into piece,state from BOARD where ID_CELL = cell AND ID_BOARD = actualBoardId;
             if(state = 1)then
               pieceType := substr(piece,1,1);
               pieceColor := substr(piece,2,1);
               if (pieceType = 'r')then
                 if(pieceColor  <> playerColor)then
                      DBMS_OUTPUT.PUT_LINE('JAQUE');
                  end if;
               end if;
           end if;
           IF(finalLetter <> 'G')then
                 nextLetter := (chr(ascii(finalLetter) + 2));
                 cell := (nextLetter||7);
                 select ID_PIECE,FILL into piece,state from BOARD where ID_CELL = cell AND ID_BOARD = actualBoardId;
             if(state = 1)then
               pieceType := substr(piece,1,1);
               pieceColor := substr(piece,2,1);
               if (pieceType = 'r')then
                 if(pieceColor  <> playerColor)then
                      DBMS_OUTPUT.PUT_LINE('JAQUE');
                  end if;
               end if;
           end if;
         end if;
           IF(finalLetter <> 'B')then
                 beforeLetter := (chr(ascii(finalLetter) - 2));
                 cell := (nextLetter||7);
                 select ID_PIECE,FILL into piece,state from BOARD where ID_CELL = cell AND ID_BOARD = actualBoardId;
            if(state = 1)then
               pieceType := substr(piece,1,1);
               pieceColor := substr(piece,2,1);
               if (pieceType = 'r')then
                 if(pieceColor  <> playerColor)then
                      DBMS_OUTPUT.PUT_LINE('JAQUE');
                  end if;
               end if;
           end if;
         end if;
     end if;
        IF(finalLetter = 'A' AND finalLetter = 'H' and finalNumber <> 1 and finalNumber <> 8)then
           cell := ('F'||(finalNumber +1));
             select ID_PIECE,FILL into piece,state from BOARD where ID_CELL = cell AND ID_BOARD = actualBoardId;
             if(state = 1)then
               pieceType := substr(piece,1,1);
               pieceColor := substr(piece,2,1);
               if (pieceType = 'r')then
                 if(pieceColor  <> playerColor)then
                      DBMS_OUTPUT.PUT_LINE('JAQUE');
                  end if;
               end if;
           end if;
           cell := ('F'||(finalNumber - 1));
             select ID_PIECE,FILL into piece,state from BOARD where ID_CELL = cell AND ID_BOARD = actualBoardId;
             if(state = 1)then
               pieceType := substr(piece,1,1);
               pieceColor := substr(piece,2,1);
               if (pieceType = 'r')then
                 if(pieceColor  <> playerColor)then
                      DBMS_OUTPUT.PUT_LINE('JAQUE');
                  end if;
               end if;
           end if;
           cell := ('C'||(finalNumber - 1));
             select ID_PIECE,FILL into piece,state from BOARD where ID_CELL = cell AND ID_BOARD = actualBoardId;
             if(state = 1)then
               pieceType := substr(piece,1,1);
               pieceColor := substr(piece,2,1);
               if (pieceType = 'r')then
                 if(pieceColor  <> playerColor)then
                      DBMS_OUTPUT.PUT_LINE('JAQUE');
                  end if;
               end if;
           end if;
           cell := ('C'||(finalNumber + 1));
             select ID_PIECE,FILL into piece,state from BOARD where ID_CELL = cell AND ID_BOARD = actualBoardId;
             if(state = 1)then
               pieceType := substr(piece,1,1);
               pieceColor := substr(piece,2,1);
               if (pieceType = 'r')then
                 if(pieceColor  <> playerColor)then
                      DBMS_OUTPUT.PUT_LINE('JAQUE');
                  end if;
               end if;
           end if;
           IF(finalNumber <> 2)then
                 cell := ('G'||(finalNumber + 2));
                 select ID_PIECE,FILL into piece,state from BOARD where ID_CELL = cell AND ID_BOARD = actualBoardId;
             if(state = 1)then
               pieceType := substr(piece,1,1);
               pieceColor := substr(piece,2,1);
               if (pieceType = 'r')then
                 if(pieceColor  <> playerColor)then
                      DBMS_OUTPUT.PUT_LINE('JAQUE');
                  end if;
               end if;
           end if;
         end if;
          cell := ('B'||( + 2));
           select ID_PIECE,FILL into piece,state from BOARD where ID_CELL = cell AND ID_BOARD = actualBoardId;
             if(state = 1)then
               pieceType := substr(piece,1,1);
               pieceColor := substr(piece,2,1);
               if (pieceType = 'r')then
                 if(pieceColor  <> playerColor)then
                      DBMS_OUTPUT.PUT_LINE('JAQUE');
                  end if;
               end if;
           end if;
           IF(finalNumber <> 6)then
               cell := ('G'||(finalNumber - 2));
                 select ID_PIECE,FILL into piece,state from BOARD where ID_CELL = cell AND ID_BOARD = actualBoardId;
             if(state = 1)then
               pieceType := substr(piece,1,1);
               pieceColor := substr(piece,2,1);
               if (pieceType = 'r')then
                 if(pieceColor  <> playerColor)then
                      DBMS_OUTPUT.PUT_LINE('JAQUE');
                  end if;
               end if;
           end if;
         end if;
          cell := ('B'||(finalNumber - 2));
           select ID_PIECE,FILL into piece,state from BOARD where ID_CELL = cell AND ID_BOARD = actualBoardId;
             if(state = 1)then
               pieceType := substr(piece,1,1);
               pieceColor := substr(piece,2,1);
               if (pieceType = 'r')then
                 if(pieceColor  <> playerColor)then
                      DBMS_OUTPUT.PUT_LINE('JAQUE');
                  end if;
               end if;
           end if;
         end if;
END horseCheck;
/


--VALIDATES

--king 
CREATE OR REPLACE PROCEDURE validateKing(pInitialCoord varchar2, pFinalCoord varchar2, pCOLOR_TURN_P varchar2, pID_BOARD number) IS

  initialLetter BOARD.ID_CELL%type;
  initialNumber int;
  finalLetter BOARD.ID_CELL%type;
  finalNumber int;
  piece BOARD.ID_PIECE%TYPE;
  cell BOARD.ID_CELL%type;
  playerPiece BOARD.ID_PIECE%TYPE;
  playerColor char;
  pieceColor char;
  status_ BOARD.FILL%type;
  permitted int;
  numberCont int;
  letterCont int;
  idCurrentBoard number(5);
  COLOR_TURN_P varchar2(1);

  BEGIN

    COLOR_TURN_P := pCOLOR_TURN_P;
    idCurrentBoard := pID_BOARD;
    numberCont := 0;
    letterCont := 0;
    initialLetter:= substr(pInitialCoord,1,1);
    initialNumber:= to_number(substr(pInitialCoord,2));
    finalLetter:= substr(pFinalCoord,1,1);
    finalNumber:= to_number(substr(pFinalCoord,2));
    permitted := 1;

    SELECT ID_PIECE, FILL INTO piece, status_ FROM BOARD WHERE ID_CELL = pFinalCoord AND ID_BOARD = idCurrentBoard;
      
    SELECT ID_PIECE INTO playerPiece FROM BOARD WHERE ID_CELL = pInitialCoord AND ID_BOARD = idCurrentBoard;

      if(initialLetter = finalLetter and initialNumber <> finalNumber) then

        if(initialNumber < finalNumber) then

          for i in initialNumber..finalNumber loop

            if(initialNumber < finalNumber)then

              numberCont := numberCont + 1;

            end if;

          end loop;

        end if;

        if(initialNumber > finalNumber) then

          for i in reverse finalNumber..initialNumber loop

            if(initialNumber > finalNumber)then

              numberCont := numberCont + 1;

            end if;

          end loop;

        end if;

      end if;

      if(initialLetter <> finalLetter and initialNumber = finalNumber) then

        if(ascii(finalLetter) > ascii(initialLetter))then

          for a in ascii(initialLetter)..ascii(finalLetter)loop

            if(ascii(initialLetter) < ascii(finalLetter))then

              letterCont := letterCont + 1;

            end if;

          end loop;

        end if;

        if(ascii(finalLetter) < ascii(initialLetter))then

          for a in reverse ascii(finalLetter)..ascii(initialLetter)loop

            if(ascii(initialLetter) > ascii(finalLetter))then

              letterCont := letterCont + 1;

            end if;

          end loop;

        end if;

      end if;

      if(initialLetter <> finalLetter and initialNumber <> finalNumber) then

        if(initialNumber < finalNumber) then

          for i in initialNumber..finalNumber loop

            if(initialNumber < finalNumber)then

              numberCont := numberCont + 1;

            end if;

          end loop;

        end if;

        if(initialNumber > finalNumber) then

          for i in reverse finalNumber..initialNumber loop

            if(initialNumber > finalNumber)then

              numberCont := numberCont + 1;

            end if;

          end loop;

        end if;

      end if;

      if(initialLetter <> finalLetter and initialNumber <> finalNumber) then

        if(ascii(finalLetter) > ascii(initialLetter))then

          for a in ascii(initialLetter)..ascii(finalLetter)loop

            if(ascii(initialLetter) < ascii(finalLetter))then

              letterCont := letterCont + 1;

            end if;

          end loop;

        end if;

        if(ascii(finalLetter) < ascii(initialLetter))then

          for a in reverse ascii(finalLetter)..ascii(initialLetter)loop

            if(ascii(initialLetter) > ascii(finalLetter))then

              letterCont := letterCont + 1;

            end if;

          end loop;

        end if;

      end if;

      if (numberCont = 2 AND letterCont = 0) THEN

        if (status_ = 1)then

          playerColor := substr(playerPiece,2,1);
          pieceColor := substr(piece,2,1); 

            if (playerColor <> pieceColor) THEN

              UPDATE BOARD SET ID_PIECE = playerPiece , FILL = 1 WHERE ID_CELL = pFinalCoord;
              UPDATE BOARD SET ID_PIECE = NULL, FILL = 0 WHERE ID_CELL = pInitialCoord;

              kingCheck(pFinalCoord,idCurrentBoard);

                if COLOR_TURN_P = 'B' THEN
                        
                  UPDATE MOVEMENT set COLOR_TURN_P = 'N' WHERE ID_MOVEMENT = 0;

                  else

                  UPDATE MOVEMENT set COLOR_TURN_P = 'B' WHERE ID_MOVEMENT = 0;

                end if;

              else
                    
              DBMS_OUTPUT.PUT_LINE('No se pueden comer piezas del mismo color.');

            end if;

              else

              UPDATE BOARD SET ID_PIECE = playerPiece, FILL = 1 WHERE ID_CELL = pFinalCoord;
              UPDATE BOARD SET ID_PIECE = NULL, FILL = 0 WHERE ID_CELL = pInitialCoord;

              kingCheck(pFinalCoord,idCurrentBoard);
                    
                if COLOR_TURN_P = 'B' THEN

                  UPDATE MOVEMENT set COLOR_TURN_P = 'N' WHERE ID_MOVEMENT = 0;

                else

                  UPDATE MOVEMENT set COLOR_TURN_P = 'B' WHERE ID_MOVEMENT = 0;

          end if;

        end if;

      end if;

      if (letterCont = 2 AND numberCont = 0) THEN

        if (status_ = 1)then

          playerColor := substr(playerPiece,2,1);
          pieceColor := substr(piece,2,1);

            if (playerColor <> pieceColor) THEN

              UPDATE BOARD SET ID_PIECE = playerPiece, FILL = 1 WHERE ID_CELL = pFinalCoord;
              UPDATE BOARD SET ID_PIECE = NULL, FILL = 0 WHERE ID_CELL = pInitialCoord;

              kingCheck(pFinalCoord,idCurrentBoard);

                if COLOR_TURN_P = 'B' THEN

                  UPDATE MOVEMENT set COLOR_TURN_P = 'N' WHERE ID_MOVEMENT = 0;

                else

                  UPDATE MOVEMENT set COLOR_TURN_P = 'B' WHERE ID_MOVEMENT = 0;

                end if;

              else

                    DBMS_OUTPUT.PUT_LINE('No se pueden comer piezas del mismo color.');

              end if;

            else

              UPDATE BOARD SET ID_PIECE = playerPiece, FILL = 1 WHERE ID_CELL = pFinalCoord;
              UPDATE BOARD SET ID_PIECE = NULL, FILL = 0 WHERE ID_CELL = pInitialCoord;

              kingCheck(pFinalCoord,idCurrentBoard);

                if COLOR_TURN_P = 'B' THEN

                  UPDATE MOVEMENT set COLOR_TURN_P = 'N' WHERE ID_MOVEMENT = 0;

                else

                  UPDATE MOVEMENT set COLOR_TURN_P = 'B' WHERE ID_MOVEMENT = 0;

                end if;

          end if;

        end if;

        if (numberCont = 2 and letterCont = 2) THEN

          if (status_ = 1)then

            playerColor := substr(playerPiece,2,1);
            pieceColor := substr(piece,2,1);

              if (playerColor <> pieceColor) THEN

                UPDATE BOARD SET ID_PIECE = playerPiece, FILL = 1 WHERE ID_CELL = pFinalCoord;
                UPDATE BOARD SET ID_PIECE = NULL, FILL = 0 WHERE ID_CELL = pInitialCoord;

                kingCheck(pFinalCoord,idCurrentBoard);

                  if COLOR_TURN_P = 'B' THEN

                    UPDATE MOVEMENT set COLOR_TURN_P = 'N' WHERE ID_MOVEMENT = 0;

                  else

                    UPDATE MOVEMENT set COLOR_TURN_P = 'B' WHERE ID_MOVEMENT = 0;

                  end if;

                else

                  DBMS_OUTPUT.PUT_LINE('No se pueden comer piezas del mismo color.');

                end if;

            else

              UPDATE BOARD SET ID_PIECE = playerPiece, FILL = 1 WHERE ID_CELL = pFinalCoord;
              UPDATE BOARD SET ID_PIECE = NULL, FILL = 0 WHERE ID_CELL = pInitialCoord;

              kingCheck(pFinalCoord,idCurrentBoard);

                if COLOR_TURN_P = 'B' THEN

                  UPDATE MOVEMENT set COLOR_TURN_P = 'N' WHERE ID_MOVEMENT = 0;

                else

                  UPDATE MOVEMENT set COLOR_TURN_P = 'B' WHERE ID_MOVEMENT = 0;

                end if;

          end if;

        end if;

      if(numberCont > 2 or letterCont > 2) then

        DBMS_OUTPUT.PUT_LINE('Movimiento incorrecto');

      end if;
    
End validateKing;
/
--Queen 
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
--Pawn 
CREATE OR REPLACE procedure validatePawn (pinitialCoord varchar2, pfinalCoord varchar2, pCOLOR_TURN_P varchar2, pID_BOARD number) IS

  TYPE indMovement IS RECORD(ID_IND_PIECE varchar2(3), INITIAL_POSITION varchar2(2), FINAL_POSITION varchar2(2));
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
  COLOR_TURN_P varchar2(1);
  initialMovePawn number(1) := 0;
  idActiveBoard number(5);

  BEGIN
    COLOR_TURN_P := pCOLOR_TURN_P;
    idActiveBoard := pID_BOARD;
    mov.INITIAL_POSITION := pinitialCoord;
    mov.FINAL_POSITION := pfinalCoord;
    SELECT ID_PIECE INTO mov.ID_IND_PIECE FROM BOARD WHERE ID_CELL = mov.INITIAL_POSITION AND ID_BOARD = idActiveBoard;
    initialCellNumber := TO_NUMBER(SUBSTR(mov.INITIAL_POSITION,2,1));
    finalCellNumber := TO_NUMBER(SUBSTR(mov.FINAL_POSITION,2,1));

    IF COLOR_TURN_P = 'B' AND finalCellNumber > initialCellNumber OR COLOR_TURN_P = 'N' AND finalCellNumber < initialCellNumber THEN

      SELECT FILL INTO finalCellTake FROM BOARD WHERE ID_CELL = mov.FINAL_POSITION AND ID_BOARD = idActiveBoard;

      IF finalCellTake = 1 THEN

        SELECT SUBSTR(ID_PIECE,2,1) INTO finalColorPiece FROM BOARD WHERE ID_CELL = mov.FINAL_POSITION AND ID_BOARD = idActiveBoard;
        IF finalColorPiece != COLOR_TURN_P THEN

          initialCellColumn := SUBSTR(mov.INITIAL_POSITION,1,1);
          finalCellColumn := SUBSTR(mov.FINAL_POSITION,1,1);
          IF chr(ascii(finalCellColumn)) = chr(ascii(initialCellColumn) + 1) OR chr(ascii(finalCellColumn)) = chr(ascii(initialCellColumn) - 1) THEN

            IF COLOR_TURN_P = 'B' AND finalCellNumber = initialCellNumber + 1 OR COLOR_TURN_P = 'N' AND finalCellNumber = initialCellNumber - 1 THEN

              UPDATE BOARD
              SET ID_PIECE = mov.ID_IND_PIECE,
                  FILL = 1
              WHERE ID_CELL = mov.FINAL_POSITION AND ID_BOARD = idActiveBoard;

              UPDATE BOARD
              SET ID_PIECE = NULL,
                  FILL = 0
              WHERE ID_CELL = mov.INITIAL_POSITION AND ID_BOARD = idActiveBoard;

              dbms_output.put_line('Se ha tomado la pieza.');

              IF COLOR_TURN_P = 'B' THEN
                UPDATE MOVEMENT set COLOR_TURN_P = 'N' WHERE ID_MOVEMENT = 0;
              ELSE
                UPDATE MOVEMENT set COLOR_TURN_P = 'B' WHERE ID_MOVEMENT = 0;
              END IF;

            ELSE

              dbms_output.put_line('No se puede tomar la pieza.');

            END IF;

          ELSE

          dbms_output.put_line('La pieza objetivo no esta en una columna adyacente.');

          END IF;

        ELSE

          dbms_output.put_line('No se puede tomar una pieza propia.');

        END IF;

      ELSE

        initialCellColumn := SUBSTR(mov.INITIAL_POSITION,1,1);
        finalCellColumn := SUBSTR(mov.FINAL_POSITION,1,1);
        IF finalCellColumn = initialCellColumn THEN

          CASE
            WHEN mov.ID_IND_PIECE = 'pb1' AND mov.INITIAL_POSITION = 'A2' THEN initialMovePawn := 1;
            WHEN mov.ID_IND_PIECE = 'pb2' AND mov.INITIAL_POSITION = 'B2' THEN initialMovePawn := 1;
            WHEN mov.ID_IND_PIECE = 'pb3' AND mov.INITIAL_POSITION = 'C2' THEN initialMovePawn := 1;
            WHEN mov.ID_IND_PIECE = 'pb4' AND mov.INITIAL_POSITION = 'D2' THEN initialMovePawn := 1;
            WHEN mov.ID_IND_PIECE = 'pb5' AND mov.INITIAL_POSITION = 'E2' THEN initialMovePawn := 1;
            WHEN mov.ID_IND_PIECE = 'pb6' AND mov.INITIAL_POSITION = 'F2' THEN initialMovePawn := 1;
            WHEN mov.ID_IND_PIECE = 'pb7' AND mov.INITIAL_POSITION = 'G2' THEN initialMovePawn := 1;
            WHEN mov.ID_IND_PIECE = 'pb8' AND mov.INITIAL_POSITION = 'H2' THEN initialMovePawn := 1;
            WHEN mov.ID_IND_PIECE = 'pn1' AND mov.INITIAL_POSITION = 'A7' THEN initialMovePawn := 1;
            WHEN mov.ID_IND_PIECE = 'pn2' AND mov.INITIAL_POSITION = 'B7' THEN initialMovePawn := 1;
            WHEN mov.ID_IND_PIECE = 'pn3' AND mov.INITIAL_POSITION = 'C7' THEN initialMovePawn := 1;
            WHEN mov.ID_IND_PIECE = 'pn4' AND mov.INITIAL_POSITION = 'D7' THEN initialMovePawn := 1;
            WHEN mov.ID_IND_PIECE = 'pn5' AND mov.INITIAL_POSITION = 'E7' THEN initialMovePawn := 1;
            WHEN mov.ID_IND_PIECE = 'pn6' AND mov.INITIAL_POSITION = 'F7' THEN initialMovePawn := 1;
            WHEN mov.ID_IND_PIECE = 'pn7' AND mov.INITIAL_POSITION = 'G7' THEN initialMovePawn := 1;
            WHEN mov.ID_IND_PIECE = 'pn8' AND mov.INITIAL_POSITION = 'H7' THEN initialMovePawn := 1;
            
            ELSE initialMovePawn := 0;
          END CASE;

          IF initialMovePawn = 1 AND COLOR_TURN_P = 'B' AND finalCellNumber = initialCellNumber + 2  THEN

            UPDATE BOARD
            SET ID_PIECE = mov.ID_IND_PIECE,
                FILL = 1
            WHERE ID_CELL = mov.FINAL_POSITION AND ID_BOARD = idActiveBoard;

            UPDATE BOARD
            SET ID_PIECE = NULL,
                FILL = 0
            WHERE ID_CELL = mov.INITIAL_POSITION AND ID_BOARD = idActiveBoard;


            IF COLOR_TURN_P = 'B' THEN
              UPDATE MOVEMENT set COLOR_TURN_P = 'N' WHERE ID_MOVEMENT = 0;
            ELSE
              UPDATE MOVEMENT set COLOR_TURN_P = 'B' WHERE ID_MOVEMENT = 0;
            END IF;

          ELSIF initialMovePawn = 1 AND COLOR_TURN_P = 'N' AND finalCellNumber = initialCellNumber - 2 OR finalCellNumber = initialCellNumber - 1 THEN

            UPDATE BOARD
            SET ID_PIECE = mov.ID_IND_PIECE,
                FILL = 1
            WHERE ID_CELL = mov.FINAL_POSITION AND ID_BOARD = idActiveBoard;

            UPDATE BOARD
            SET ID_PIECE = NULL,
                FILL = 0
            WHERE ID_CELL = mov.INITIAL_POSITION AND ID_BOARD = idActiveBoard;

            --dbms_output.put_line('Movimiento legal');

            IF COLOR_TURN_P = 'B' THEN
              UPDATE MOVEMENT set COLOR_TURN_P = 'N' WHERE ID_MOVEMENT = 0;
            ELSE
              UPDATE MOVEMENT set COLOR_TURN_P = 'B' WHERE ID_MOVEMENT = 0;
            END IF;

          ELSIF initialMovePawn = 0 AND COLOR_TURN_P = 'B' AND finalCellNumber = initialCellNumber + 1 OR finalCellNumber = initialCellNumber + 2 THEN

            UPDATE BOARD
            SET ID_PIECE = mov.ID_IND_PIECE,
                FILL = 1
            WHERE ID_CELL = mov.FINAL_POSITION AND ID_BOARD = idActiveBoard;

            UPDATE BOARD
            SET ID_PIECE = NULL,
                FILL = 0
            WHERE ID_CELL = mov.INITIAL_POSITION AND ID_BOARD = idActiveBoard;

            dbms_output.put_line('indMovement legal');

            IF COLOR_TURN_P = 'B' THEN
              UPDATE MOVEMENT set COLOR_TURN_P = 'N' WHERE ID_MOVEMENT = 0;
            ELSE
              UPDATE MOVEMENT set COLOR_TURN_P = 'B' WHERE ID_MOVEMENT = 0;
            END IF;

          ELSIF initialMovePawn = 0 AND COLOR_TURN_P = 'N' AND finalCellNumber = initialCellNumber - 1 OR finalCellNumber = initialCellNumber - 2 THEN

            UPDATE BOARD
            SET ID_PIECE = mov.ID_IND_PIECE,
                FILL = 1
            WHERE ID_CELL = mov.FINAL_POSITION AND ID_BOARD = idActiveBoard;

            UPDATE BOARD
            SET ID_PIECE = NULL,
                FILL = 0
            WHERE ID_CELL = mov.INITIAL_POSITION AND ID_BOARD = idActiveBoard;

            --dbms_output.put_line('indMovement legal');

            IF COLOR_TURN_P = 'B' THEN
              UPDATE MOVEMENT set COLOR_TURN_P = 'N' WHERE ID_MOVEMENT = 0;
            ELSE
              UPDATE MOVEMENT set COLOR_TURN_P = 'B' WHERE ID_MOVEMENT = 0;
            END IF;


          ELSE

            dbms_output.put_line('Movimiento no permitido.');

          END IF;

        ELSE

          dbms_output.put_line('El peon debe avanzar sobre la columna actual.');

        END IF;

      END IF;

    ELSE

      dbms_output.put_line('El peon no puede retroceder.');

    END IF;

    --showBoard(idActiveBoard);

END validatePawn;
/
--Rook
create or replace procedure validateRook (initialCoord varchar2,finalCoord varchar2,pCOLOR_TURN_P varchar2, pID_BOARD number) IS
      initialLetter BOARD.ID_CELL%type;
      finalLetter BOARD.ID_CELL%type;
      piece BOARD.ID_PIECE%TYPE;
      cell BOARD.ID_CELL%type;
      playerPiece BOARD.ID_PIECE%TYPE;
      stateCell BOARD.FILL%type;
      
      initialNumber int;
      finalNumber int;
      playerColor char;
      pieceColor char;
      valid int;
      idActiveBoard number(5);
      COLOR_TURN_P varchar2(1);
   begin
     COLOR_TURN_P := pCOLOR_TURN_P;
     idActiveBoard := pID_BOARD;
     initialLetter:= substr(initialCoord,1,1);
     initialNumber:= to_number(substr(initialCoord,2));
     finalLetter:= substr(finalCoord,1,1);
     finalNumber:= to_number(substr(finalCoord,2));
     valid := 1;

     select ID_PIECE into playerPiece from BOARD where ID_CELL = initialCoord AND ID_BOARD = idActiveBoard;
     if(initialNumber <> finalNumber and finalLetter <> initialLetter) then
       DBMS_OUTPUT.PUT_LINE('Movimiento incorrecto.');
       else
       if (finalLetter <> initialLetter and finalNumber = initialNumber) then
            if(ascii(finalLetter) < ascii(initialLetter)) THEN
                  for a in REVERSE ascii(finalLetter)..ascii(initialLetter) loop
                       cell := (chr(a)||finalNumber);
                       select ID_PIECE,FILL into piece,stateCell from BOARD where ID_CELL = cell AND ID_BOARD = idActiveBoard;
                        if (stateCell = 1  and chr(a) <> initialLetter and chr(a) <> finalLetter) THEN
                           DBMS_OUTPUT.PUT_LINE('Movimiento incorrecto.');
                           valid := 0;
                        end if;
                end loop;
                END IF;
                if(ascii(finalLetter) > ascii(initialLetter)) THEN
                for a in ascii(initialLetter)..ascii(finalLetter) loop
                    cell := (chr(a)||finalNumber);
                    select ID_PIECE,FILL into piece,stateCell from BOARD where ID_CELL = cell AND ID_BOARD = idActiveBoard;
                    if (stateCell = 1  and chr(a) <> finalLetter and chr(a) <> initialLetter) THEN
                        DBMS_OUTPUT.PUT_LINE('Movimiento incorrecto.');
                        valid := 0;
                    end if;
                if (stateCell = 1  and chr(a) = finalLetter and valid = 1) THEN
                        playerColor := substr(playerPiece,2,1);
                            pieceColor := substr(piece,2,1);
                            if (playerColor <> pieceColor) THEN
                                UPDATE BOARD
                                SET ID_PIECE = playerPiece ,
                                FILL = 1
                                WHERE ID_CELL = finalCoord;
                                UPDATE BOARD
                                SET ID_PIECE = NULL,
                                FILL = 0
                                WHERE ID_CELL = initialCoord;
                                rookCheck(finalCoord,idActiveBoard);
                                IF COLOR_TURN_P = 'B' THEN
                                    UPDATE MOVEMENT set COLOR_TURN_P = 'N' WHERE ID_MOVEMENT = 0;
                                ELSE
                                    UPDATE MOVEMENT set COLOR_TURN_P = 'B' WHERE ID_MOVEMENT = 0;
                                END IF;
                                else
                                DBMS_OUTPUT.PUT_LINE('Movimiento incorrecto no puede comer una piece del mismo color.');
                            end if;
                end if;
                if (stateCell = 0  and chr(a) = finalLetter and valid = 1) THEN
                    UPDATE BOARD
                    SET ID_PIECE = playerPiece ,
                    FILL = 1
                    WHERE ID_CELL = finalCoord;
                    UPDATE BOARD
                    SET ID_PIECE = NULL,
                    FILL = 0
                    WHERE ID_CELL = initialCoord;
                    rookCheck(finalCoord,idActiveBoard);
                    IF COLOR_TURN_P = 'B' THEN
                        UPDATE MOVEMENT set COLOR_TURN_P = 'N' WHERE ID_MOVEMENT = 0;
                    ELSE
                        UPDATE MOVEMENT set COLOR_TURN_P = 'B' WHERE ID_MOVEMENT = 0;
                    END IF;
                end if;
                end loop;
            END IF;
            if(ascii(finalLetter) > ascii(initialLetter)) THEN
               for a in ascii(initialLetter)..ascii(finalLetter) loop
                  cell := (chr(a)||finalNumber);
                  select ID_PIECE,FILL into piece,stateCell from BOARD where ID_CELL = cell AND ID_BOARD = idActiveBoard;
                   if (stateCell = 1  and chr(a) <> finalLetter and chr(a) <> initialLetter) THEN
                     DBMS_OUTPUT.PUT_LINE('Movimiento incorrecto.');
                     valid := 0;
                   end if;
               if (stateCell = 1  and chr(a) = finalLetter and valid = 1) THEN
                    playerColor := substr(playerPiece,2,1);
                           pieceColor := substr(piece,2,1);
                           if (playerColor <> pieceColor) THEN
                               UPDATE BOARD
                               SET ID_PIECE = playerPiece ,
                               FILL = 1
                               WHERE ID_CELL = finalCoord;
                               UPDATE BOARD
                               SET ID_PIECE = NULL,
                               FILL = 0
                               WHERE ID_CELL = initialCoord;
                               rookCheck(finalCoord,idActiveBoard);
                               IF COLOR_TURN_P = 'B' THEN
                                 UPDATE MOVEMENT set COLOR_TURN_P = 'N' WHERE ID_MOVEMENT = 0;
                               ELSE
                                 UPDATE MOVEMENT set COLOR_TURN_P = 'B' WHERE ID_MOVEMENT = 0;
                               END IF;
                            else
                              DBMS_OUTPUT.PUT_LINE('Movimiento incorrecto no puede comer una piece del mismo color.');
                          end if;
               end if;
               if (stateCell = 0  and chr(a) = finalLetter and valid = 1) THEN
                   UPDATE BOARD
                   SET ID_PIECE = playerPiece ,
                   FILL = 1
                   WHERE ID_CELL = finalCoord;
                   UPDATE BOARD
                   SET ID_PIECE = NULL,
                   FILL = 0
                   WHERE ID_CELL = initialCoord;
                   rookCheck(finalCoord,idActiveBoard);
                   IF COLOR_TURN_P = 'B' THEN
                     UPDATE MOVEMENT set COLOR_TURN_P = 'N' WHERE ID_MOVEMENT = 0;
                   ELSE
                     UPDATE MOVEMENT set COLOR_TURN_P = 'B' WHERE ID_MOVEMENT = 0;
                   END IF;
              end if;
            end loop;
         END IF;
    end if;
    if (finalLetter = initialLetter and finalNumber <> initialNumber) then
            if(finalNumber < initialNumber) THEN
                  for i in REVERSE finalNumber..initialNumber loop
                       cell := (finalLetter||i);
                       select ID_PIECE,FILL into piece,stateCell from BOARD where ID_CELL = cell AND ID_BOARD = idActiveBoard;
                        if (stateCell = 1  and i <> initialNumber and i <> finalNumber) THEN
                           DBMS_OUTPUT.PUT_LINE('Movimiento incorrecto.');
                           valid := 0;
                        end if;
                end loop;
                END IF;
                if(finalNumber > initialNumber) THEN
                for i in initialNumber..finalNumber loop
                    cell := (finalLetter||i);
                    select ID_PIECE,FILL into piece,stateCell from BOARD where ID_CELL = cell AND ID_BOARD = idActiveBoard;
                    if (stateCell = 1  and i <> finalNumber and i <> initialNumber) THEN
                        DBMS_OUTPUT.PUT_LINE('Movimiento incorrecto.');
                        valid := 0;
                    end if;
                if (stateCell = 1  and i = finalNumber and valid = 1) THEN
                        playerColor := substr(playerPiece,2,1);
                            pieceColor := substr(piece,2,1);
                            if (playerColor <> pieceColor) THEN
                                UPDATE BOARD
                                SET ID_PIECE = playerPiece ,
                                FILL = 1
                                WHERE ID_CELL = finalCoord;
                                UPDATE BOARD
                                SET ID_PIECE = NULL,
                                FILL = 0
                                WHERE ID_CELL = initialCoord;
                                rookCheck(finalCoord,idActiveBoard);
                                IF COLOR_TURN_P = 'B' THEN
                                    UPDATE MOVEMENT set COLOR_TURN_P = 'N' WHERE ID_MOVEMENT = 0;
                                ELSE
                                    UPDATE MOVEMENT set COLOR_TURN_P = 'B' WHERE ID_MOVEMENT = 0;
                                END IF;
                                else
                                DBMS_OUTPUT.PUT_LINE('Movimiento incorrecto no puede comer una piece del mismo color.');
                            end if;
                end if;
                if (stateCell = 0  and i = finalNumber and valid = 1) THEN
                    UPDATE BOARD
                    SET ID_PIECE = playerPiece ,
                    FILL = 1
                    WHERE ID_CELL = finalCoord;
                    UPDATE BOARD
                    SET ID_PIECE = NULL,
                    FILL = 0
                    WHERE ID_CELL = initialCoord;
                    rookCheck(finalCoord,idActiveBoard);
                    IF COLOR_TURN_P = 'B' THEN
                        UPDATE MOVEMENT set COLOR_TURN_P = 'N' WHERE ID_MOVEMENT = 0;
                    ELSE
                        UPDATE MOVEMENT set COLOR_TURN_P = 'B' WHERE ID_MOVEMENT = 0;
                    END IF;
                end if;
                end loop;
            END IF;
            if(finalNumber > initialNumber) THEN
               for i in initialNumber..finalNumber loop
                  cell := (finalLetter||i);
                  select ID_PIECE,FILL into piece,stateCell from BOARD where ID_CELL = cell AND ID_BOARD = idActiveBoard;
                   if (stateCell = 1  and i <> finalNumber and i <> initialNumber) THEN
                     DBMS_OUTPUT.PUT_LINE('Movimiento incorrecto.');
                     valid := 0;
                   end if;
               if (stateCell = 1  and i = finalNumber and valid = 1) THEN
                    playerColor := substr(playerPiece,2,1);
                           pieceColor := substr(piece,2,1);
                           if (playerColor <> pieceColor) THEN
                               UPDATE BOARD
                               SET ID_PIECE = playerPiece ,
                               FILL = 1
                               WHERE ID_CELL = finalCoord;
                               UPDATE BOARD
                               SET ID_PIECE = NULL,
                               FILL = 0
                               WHERE ID_CELL = initialCoord;
                               rookCheck(finalCoord,idActiveBoard);
                               IF COLOR_TURN_P = 'B' THEN
                                 UPDATE MOVEMENT set COLOR_TURN_P = 'N' WHERE ID_MOVEMENT = 0;
                               ELSE
                                 UPDATE MOVEMENT set COLOR_TURN_P = 'B' WHERE ID_MOVEMENT = 0;
                               END IF;
                            else
                              DBMS_OUTPUT.PUT_LINE('Movimiento incorrecto no puede comer una piece del mismo color.');
                          end if;
               end if;
               if (stateCell = 0  and i = finalNumber and valid = 1) THEN
                   UPDATE BOARD
                   SET ID_PIECE = playerPiece ,
                   FILL = 1
                   WHERE ID_CELL = finalCoord;
                   UPDATE BOARD
                   SET ID_PIECE = NULL,
                   FILL = 0
                   WHERE ID_CELL = initialCoord;
                   rookCheck(finalCoord,idActiveBoard);
                  IF COLOR_TURN_P = 'B' THEN
                    UPDATE MOVEMENT set COLOR_TURN_P = 'N' WHERE ID_MOVEMENT = 0;
                  ELSE
                    UPDATE MOVEMENT set COLOR_TURN_P = 'B' WHERE ID_MOVEMENT = 0;
                  END IF;
              end if;
            end loop;
         END IF;
         END IF;
         END IF;
    
  
END validateRook;
/

--Bishop 
create or replace procedure validateBishop (pInitialPos varchar2, pFinalPos varchar2, pColorTurn varchar2, pIdActiveBoard number)
   is
  coordIni varchar2(2);
  coordFin varchar2(2);
  TYPE indMovement IS RECORD(
  id_piece varchar2(3),
  initial_position varchar2(2),
  final_position varchar2(2));

  mov indMovement;
  inicialCellFill number(1);
  finalCellFill number(1);
  numCellIni number(1);
  numCellFin number(1);
  columnCellIni varchar2(1);
  columnCellFin varchar2(1);
  enemy number(1); -- 0 False, 1 True
  initialColorPiece varchar2(1);
  finalColorPiece varchar2(1);
  movPeon number(1) := 0; -- var espec del peon
  freeRoute number(1) := 0; -- var espec del alfil,  0 False, 1 True
  nextCell varchar2(2);
  nextCellFill number(1);
  i number(1) := 0;
  COLOR_TURN_P varchar2(1);
  idActiveBoard number(5);

  BEGIN
  coordIni := pInitialPos;
  coordFin := pFinalPos;
  idActiveBoard := pIdActiveBoard;
  COLOR_TURN_P := pColorTurn;

  SELECT FILL INTO inicialCellFill FROM BOARD WHERE ID_CELL = coordIni AND ID_BOARD = idActiveBoard;

  IF inicialCellFill = 1 THEN

    SELECT ID_PIECE INTO mov.id_piece FROM BOARD WHERE ID_CELL = coordIni AND ID_BOARD = idActiveBoard;
    mov.initial_position := coordIni;
    mov.final_position := coordFin;

    SELECT SUBSTR(id_piece,2,1) INTO initialColorPiece FROM BOARD WHERE ID_CELL = mov.initial_position AND ID_BOARD = idActiveBoard;
    IF initialColorPiece = pColorTurn THEN

      --VALIDACION AlFIL
      numCellIni := TO_NUMBER(SUBSTR(mov.initial_position,2,1));
      numCellFin := TO_NUMBER(SUBSTR(mov.final_position,2,1));
      columnCellIni := SUBSTR(mov.initial_position,1,1);
      columnCellFin := SUBSTR(mov.final_position,1,1);

      IF ABS(ascii(columnCellIni) - ascii(columnCellFin)) = ABS(numCellIni - numCellFin) THEN

        freeRoute := 1;
        IF ascii(columnCellIni) > ascii(columnCellFin) AND numCellIni < numCellFin THEN

          nextCell := CONCAT(chr(ascii(columnCellIni) - 1), TO_CHAR(numCellIni + 1));
          WHILE freeRoute = 1 AND i < ABS(numCellIni - numCellFin) LOOP

            SELECT FILL INTO nextCellFill FROM BOARD WHERE ID_CELL = nextCell AND ID_BOARD = idActiveBoard;

            IF nextCellFill = 1 THEN

              freeRoute := 0;

            END IF;

            nextCell := CONCAT(chr(ascii(SUBSTR(nextCell,1,1)) - 1), TO_CHAR(TO_NUMBER(SUBSTR(nextCell,2,1)) + 1));
            i := i + 1;

          END LOOP;

          IF freeRoute = 1 THEN

            UPDATE BOARD
            SET id_piece = mov.id_piece,
                FILL = 1
            WHERE ID_CELL = mov.final_position AND ID_BOARD = idActiveBoard;

            UPDATE BOARD
            SET id_piece = NULL,
                FILL = 0
            WHERE ID_CELL = mov.initial_position AND ID_BOARD = idActiveBoard;
            IF COLOR_TURN_P = 'B' THEN
              UPDATE MOVEMENT set COLOR_TURN_P = 'N' WHERE ID_MOVEMENT = 0;
            ELSE
              UPDATE MOVEMENT set COLOR_TURN_P = 'B' WHERE ID_MOVEMENT = 0;
            END IF;

          ELSE

           UPDATE BOARD
            SET id_piece = mov.id_piece,
                FILL = 1
            WHERE ID_CELL = mov.final_position AND ID_BOARD = idActiveBoard;

            UPDATE BOARD
            SET id_piece = NULL,
                FILL = 0
            WHERE ID_CELL = mov.initial_position AND ID_BOARD = idActiveBoard;
            IF COLOR_TURN_P = 'B' THEN
              UPDATE MOVEMENT set COLOR_TURN_P = 'N' WHERE ID_MOVEMENT = 0;
            ELSE
              UPDATE MOVEMENT set COLOR_TURN_P = 'B' WHERE ID_MOVEMENT = 0;
            END IF;

          END IF;

        ELSIF ascii(columnCellIni) > ascii(columnCellFin) AND numCellIni > numCellFin THEN

          nextCell := CONCAT(chr(ascii(columnCellIni) - 1),TO_CHAR(numCellIni - 1));
          WHILE freeRoute = 1 AND i < ABS(numCellIni - numCellFin) LOOP

            SELECT FILL INTO nextCellFill FROM BOARD WHERE ID_CELL = nextCell AND ID_BOARD = idActiveBoard;

            IF nextCellFill = 1 THEN

              freeRoute := 0;

            END IF;

            nextCell := CONCAT(chr(ascii(SUBSTR(nextCell,1,1)) - 1), TO_CHAR(TO_NUMBER(SUBSTR(nextCell,2,1)) - 1));
            i := i + 1;

          END LOOP;

          IF freeRoute = 1 THEN

            UPDATE BOARD
            SET id_piece = mov.id_piece,
                FILL = 1
            WHERE ID_CELL = mov.final_position AND ID_BOARD = idActiveBoard;

            UPDATE BOARD
            SET id_piece = NULL,
                FILL = 0
            WHERE ID_CELL = mov.initial_position AND ID_BOARD = idActiveBoard;

            IF COLOR_TURN_P = 'B' THEN
              UPDATE MOVEMENT set COLOR_TURN_P = 'N' WHERE ID_MOVEMENT = 0;
            ELSE
              UPDATE MOVEMENT set COLOR_TURN_P = 'B' WHERE ID_MOVEMENT = 0;
            END IF;

          ELSE

            UPDATE BOARD
            SET id_piece = mov.id_piece,
                FILL = 1
            WHERE ID_CELL = mov.final_position AND ID_BOARD = idActiveBoard;

            UPDATE BOARD
            SET id_piece = NULL,
                FILL = 0
            WHERE ID_CELL = mov.initial_position AND ID_BOARD = idActiveBoard;
            IF COLOR_TURN_P = 'B' THEN
              UPDATE MOVEMENT set COLOR_TURN_P = 'N' WHERE ID_MOVEMENT = 0;
            ELSE
              UPDATE MOVEMENT set COLOR_TURN_P = 'B' WHERE ID_MOVEMENT = 0;
            END IF;

          END IF;

        ELSIF ascii(columnCellIni) < ascii(columnCellFin) AND numCellIni < numCellFin THEN

          nextCell := CONCAT(chr(ascii(columnCellIni) + 1), TO_CHAR(numCellIni + 1));
          WHILE freeRoute = 1 AND i < ABS(numCellIni - numCellFin) LOOP

            SELECT FILL INTO nextCellFill FROM BOARD WHERE ID_CELL = nextCell AND ID_BOARD = idActiveBoard;

            IF nextCellFill = 1 THEN

              freeRoute := 0;

            END IF;

            nextCell := CONCAT(chr(ascii(SUBSTR(nextCell,1,1)) + 1), TO_CHAR(TO_NUMBER(SUBSTR(nextCell,2,1)) + 1));
            i := i + 1;

          END LOOP;

          IF freeRoute = 1 THEN

            UPDATE BOARD
            SET id_piece = mov.id_piece,
                FILL = 1
            WHERE ID_CELL = mov.final_position AND ID_BOARD = idActiveBoard;

            UPDATE BOARD
            SET id_piece = NULL,
                FILL = 0
            WHERE ID_CELL = mov.initial_position AND ID_BOARD = idActiveBoard;

            IF COLOR_TURN_P = 'B' THEN
              UPDATE MOVEMENT set COLOR_TURN_P = 'N' WHERE ID_MOVEMENT = 0;
            ELSE
              UPDATE MOVEMENT set COLOR_TURN_P = 'B' WHERE ID_MOVEMENT = 0;
            END IF;

          ELSE

            UPDATE BOARD
            SET id_piece = mov.id_piece,
                FILL = 1
            WHERE ID_CELL = mov.final_position AND ID_BOARD = idActiveBoard;

            UPDATE BOARD
            SET id_piece = NULL,
                FILL = 0
            WHERE ID_CELL = mov.initial_position AND ID_BOARD = idActiveBoard;
            IF COLOR_TURN_P = 'B' THEN
              UPDATE MOVEMENT set COLOR_TURN_P = 'N' WHERE ID_MOVEMENT = 0;
            ELSE
              UPDATE MOVEMENT set COLOR_TURN_P = 'B' WHERE ID_MOVEMENT = 0;
            END IF;

          END IF;

        ELSIF ascii(columnCellIni) < ascii(columnCellFin) AND numCellIni > numCellFin THEN

          nextCell := CONCAT(chr(ascii(columnCellIni) + 1), TO_CHAR(numCellIni - 1));
          WHILE freeRoute = 1 AND i < ABS(numCellIni - numCellFin) LOOP

            SELECT FILL INTO nextCellFill FROM BOARD WHERE ID_CELL = nextCell AND ID_BOARD = idActiveBoard;

            IF nextCellFill = 1 THEN

              freeRoute := 0;

            END IF;

            nextCell := CONCAT(chr(ascii(SUBSTR(nextCell,1,1)) + 1), TO_CHAR(TO_NUMBER(SUBSTR(nextCell,2,1)) - 1));
            i := i + 1;

          END LOOP;

          IF freeRoute = 1 THEN

            UPDATE BOARD
            SET id_piece = mov.id_piece,
                FILL = 1
            WHERE ID_CELL = mov.final_position AND ID_BOARD = idActiveBoard;

            UPDATE BOARD
            SET id_piece = NULL,
                FILL = 0
            WHERE ID_CELL = mov.initial_position AND ID_BOARD = idActiveBoard;

            IF COLOR_TURN_P = 'B' THEN
              UPDATE MOVEMENT set COLOR_TURN_P = 'N' WHERE ID_MOVEMENT = 0;
            ELSE
              UPDATE MOVEMENT set COLOR_TURN_P = 'B' WHERE ID_MOVEMENT = 0;
            END IF;

          ELSE

            UPDATE BOARD
            SET id_piece = mov.id_piece,
                FILL = 1
            WHERE ID_CELL = mov.final_position AND ID_BOARD = idActiveBoard;

            UPDATE BOARD
            SET id_piece = NULL,
                FILL = 0
            WHERE ID_CELL = mov.initial_position AND ID_BOARD = idActiveBoard;
            IF COLOR_TURN_P = 'B' THEN
              UPDATE MOVEMENT set COLOR_TURN_P = 'N' WHERE ID_MOVEMENT = 0;
            ELSE
              UPDATE MOVEMENT set COLOR_TURN_P = 'B' WHERE ID_MOVEMENT = 0;
            END IF;

          END IF;

        END IF;


      ELSE

        dbms_output.put_line('indMovement ilegal');

      END IF;

    ELSE

      dbms_output.put_line('La pieza por mover debe ser del color del jugador');

    END IF;

  ELSE

    dbms_output.put_line('No hay una pieza en la coordenada origen');

  END IF;

  --showBoard(idActiveBoard);

END;
/
--Horse 
create or replace procedure validateHorse (initialCoord varchar2,finalCoord varchar2,turnPlayerColor varchar2, boardId number) is
         letraI BOARD.ID_CELL%type;
         numI   int;
         letraF BOARD.ID_CELL%type;
         numF   int;
         pieza BOARD.ID_PIECE%TYPE;
         celda BOARD.ID_CELL%type;
         piezaJugador BOARD.ID_PIECE%TYPE;
         colorJ char;
         colorP char;
         estado BOARD.FILL%type;
         permitido int;
         contadorN int;
         contadorL int;
         ID_BOARDAct number(5);
         COLOR_TURN_P varchar2(1);
   BEGIN
        COLOR_TURN_P := turnPlayerColor;
        ID_BOARDAct := boardId;
        contadorN := 0;
        contadorL := 0;
        letraI:= substr(initialCoord,1,1);
        numI:= to_number(substr(initialCoord,2));
        letraF:= substr(finalCoord,1,1);
        numF:= to_number(substr(finalCoord,2));
        permitido := 1;
        select ID_PIECE into piezaJugador from BOARD where ID_CELL = initialCoord AND ID_BOARD = ID_BOARDAct;
        if(ascii(letraF) > ascii(letraI))then
            for a in ascii(letraI)..ascii(letraF)loop
               if(ascii(letraI) < ascii(letraF))then
                   contadorL := contadorL + 1;
               end if;
            end loop;
        end if;
        if(ascii(letraF) < ascii(letraI))then
            for a in reverse ascii(letraF)..ascii(letraI)loop
                if(ascii(letraI) > ascii(letraF))then
                   contadorL := contadorL + 1;
                end if;
            end loop;
        end if;
        if(numI < numF) then
           for i in numI..numF loop
             if(numI < numF)then
                 contadorN := contadorN + 1;
             end if;
           end loop;
        end if;
        if(numI > numF) then
           for i in reverse numF..numI loop
             if(numI > numF)then
                 contadorN := contadorN + 1;
             end if;
           end loop;
        end if;
        if (contadorL > 4 or contadorL < 2 or contadorN > 4 or contadorN < 2) then
              dbms_output.put_line('Moviento incorrecto');
        else
            select ID_PIECE,FILL into pieza,estado from BOARD where ID_CELL = finalCoord AND ID_BOARD = ID_BOARDAct;
            if(contadorL = 2 and contadorN = 3 and estado =  1)then
                colorJ := substr(piezaJugador,2,1);
                colorP := substr(pieza,2,1);
                if (colorJ <> colorP) THEN
                    UPDATE BOARD
                    SET ID_PIECE = piezaJugador ,
                    FILL = 1
                    WHERE ID_CELL = finalCoord;
                    UPDATE BOARD
                    SET ID_PIECE = NULL,
                    FILL = 0
                    WHERE ID_CELL = initialCoord;
                    horseCheck(finalCoord,ID_BOARDAct);

                    IF COLOR_TURN_P = 'B' THEN
                      UPDATE MOVEMENT set COLOR_TURN_P = 'N' WHERE ID_MOVEMENT = 0;
                    ELSE
                      UPDATE MOVEMENT set COLOR_TURN_P = 'B' WHERE ID_MOVEMENT = 0;
                    END IF;
                else
                    DBMS_OUTPUT.PUT_LINE('Movimiento incorrecto no puede comer una pieza del mismo color');
                end if;
            end if;
            if(contadorL = 2 and contadorN = 3 and estado =  0)then
                UPDATE BOARD
                SET ID_PIECE = piezaJugador ,
                FILL = 1
                WHERE ID_CELL = finalCoord;
                UPDATE BOARD
                SET ID_PIECE = NULL,
                FILL = 0
                WHERE ID_CELL = initialCoord;
                horseCheck(finalCoord,ID_BOARDAct);
                IF COLOR_TURN_P = 'B' THEN
                  UPDATE MOVEMENT set COLOR_TURN_P = 'N' WHERE ID_MOVEMENT = 0;
                ELSE
                  UPDATE MOVEMENT set COLOR_TURN_P = 'B' WHERE ID_MOVEMENT = 0;
                END IF;
           end if;
           if(contadorL = 3 and contadorN = 2 and estado =  1)then
               colorJ := substr(piezaJugador,2,1);
               colorP := substr(pieza,2,1);
               if (colorJ <> colorP) THEN
                   UPDATE BOARD
                   SET ID_PIECE = piezaJugador ,
                   FILL = 1
                   WHERE ID_CELL = finalCoord;
                   UPDATE BOARD
                   SET ID_PIECE = NULL,
                   FILL = 0
                   WHERE ID_CELL = initialCoord;
                   horseCheck(finalCoord,ID_BOARDAct);
                   IF COLOR_TURN_P = 'B' THEN
                     UPDATE MOVEMENT set COLOR_TURN_P = 'N' WHERE ID_MOVEMENT = 0;
                   ELSE
                     UPDATE MOVEMENT set COLOR_TURN_P = 'B' WHERE ID_MOVEMENT = 0;
                   END IF;
              else
                   DBMS_OUTPUT.PUT_LINE('Movimiento incorrecto no puede comer una pieza del mismo color');
              end if;
           end if;
           if(contadorL = 3 and contadorN = 2 and estado =  0)then
               UPDATE BOARD
               SET ID_PIECE = piezaJugador ,
               FILL = 1
               WHERE ID_CELL = finalCoord;
               UPDATE BOARD
               SET ID_PIECE = NULL,
               FILL = 0
               WHERE ID_CELL = initialCoord;
               horseCheck(finalCoord,ID_BOARDAct);
               IF COLOR_TURN_P = 'B' THEN
                 UPDATE MOVEMENT set COLOR_TURN_P = 'N' WHERE ID_MOVEMENT = 0;
               ELSE
                 UPDATE MOVEMENT set COLOR_TURN_P = 'B' WHERE ID_MOVEMENT = 0;
               END IF;
           end if;
        end if;
END validateHorse;
/

--GAME

--Select player

CREATE OR REPLACE PROCEDURE selectPlayer IS

  CURSOR c IS SELECT * FROM PLAYERS;

  BEGIN

    dbms_output.put_line('----------------------');
    dbms_output.put_line('Jugadores disponibles.');
    dbms_output.put_line('----------------------');

    FOR player in c LOOP

      dbms_output.put_line('Nombre: ' || player.PLAYER_NAME);
      dbms_output.put_line('Identificacion: ' || player.ID_PLAYER);
      dbms_output.put_line('--------------');

    END LOOP;

END;
/

--Create game

CREATE OR REPLACE PROCEDURE createGame(pidPlayer1 NUMBER, pidPlayer2 NUMBER) IS

  idPlayer1 number(5);
  idPlayer2 number(5);
  whitePlayer number(5);
  blackPlayer number(5);
  idLastBoard number(5);
  idNewBoard number(5);
  pBoard number(10);
  idCurrentGame number(5);
  currentColor varchar2(1);
  playerW varchar2(30);
  playerB varchar2(30);

  BEGIN

  idPlayer1 := pidPlayer1;
  idPlayer2 := pidPlayer2;
  idLastBoard := 0;

  IF idPlayer1 IS NULL OR idPlayer2 IS NULL THEN

    dbms_output.put_line('--------------');
    dbms_output.put_line('Debe seleccionar la identificacion de los dos jugadores.');
    dbms_output.put_line('--------------');

  ELSE

    whitePlayer := dbms_random.value(1,2);

    IF whitePlayer = 1 THEN

      whitePlayer := idPlayer1;
      blackPlayer := idPlayer2;

    ELSE

      whitePlayer := idPlayer2;
      blackPlayer := idPlayer1;

    END IF;

    SELECT COUNT(ID_BOARD) into pBoard FROM BOARD;

    IF pBoard = 0 THEN
      idNewBoard := 1;

    ELSE

      SELECT ID_BOARD INTO idLastBoard FROM BOARD WHERE ID_BOARD = (SELECT MAX(ID_BOARD) FROM BOARD) AND ID_CELL = 'H8';

      idNewBoard := idLastBoard + 1;

    END IF;

    createNewBoard(idNewBoard);

    INSERT INTO MATCHS (ID_WHITE_P, ID_BLACK_P, ID_BOARD, ID_RECORD , ID_WINNER, ID_LOSER, GAME_STATE, COLOR_TURN_P) VALUES (whitePlayer, blackPlayer, idNewBoard, 0, 0, 0, 'pendiente','B');

    SELECT PLAYER_NAME INTO PlayerW FROM PLAYERS WHERE ID_PLAYER = whitePlayer;
    SELECT PLAYER_NAME INTO playerB FROM PLAYERS WHERE ID_PLAYER = blackPlayer;

    dbms_output.put_line('------------------------------------');
    dbms_output.put_line('La partida se ha creado exitosamente.');
    dbms_output.put_line('El jugador blanco es: ' || PlayerW);
    dbms_output.put_line('El jugador negro es: ' || playerB);
    dbms_output.put_line('------------------------------------');

    SELECT ID_MATCH INTO idCurrentGame FROM MATCHS WHERE ID_BOARD = idNewBoard;

    UPDATE MOVEMENT set ID_MATCH = idCurrentGame, ID_BOARD = idNewBoard, COLOR_TURN_P = 'B', ID_WHITE_P = whitePlayer, ID_BLACK_P = blackPlayer WHERE ID_MOVEMENT = 0;

  END IF;

END;
/

--Create new board
CREATE OR REPLACE PROCEDURE createNewBoard (pID_BOARD number) IS

  BEGIN
    dbms_output.put_line(pID_BOARD);
    INSERT INTO BOARD (ID_BOARD, ID_CELL, FILL, ID_PIECE) VALUES (pID_BOARD, 'A1', 1, 'TB1');
    INSERT INTO BOARD (ID_BOARD, ID_CELL, FILL, ID_PIECE) VALUES (pID_BOARD, 'B1', 1, 'CB1');
    INSERT INTO BOARD (ID_BOARD, ID_CELL, FILL, ID_PIECE) VALUES (pID_BOARD, 'C1', 1, 'AB1');
    INSERT INTO BOARD (ID_BOARD, ID_CELL, FILL, ID_PIECE) VALUES (pID_BOARD, 'D1', 1, 'DB1');
    INSERT INTO BOARD (ID_BOARD, ID_CELL, FILL, ID_PIECE) VALUES (pID_BOARD, 'E1', 1, 'RB1');
    INSERT INTO BOARD (ID_BOARD, ID_CELL, FILL, ID_PIECE) VALUES (pID_BOARD, 'F1', 1, 'AB2');
    INSERT INTO BOARD (ID_BOARD, ID_CELL, FILL, ID_PIECE) VALUES (pID_BOARD, 'G1', 1, 'CB2');
    INSERT INTO BOARD (ID_BOARD, ID_CELL, FILL, ID_PIECE) VALUES (pID_BOARD, 'H1', 1, 'TB2');
    INSERT INTO BOARD (ID_BOARD, ID_CELL, FILL, ID_PIECE) VALUES (pID_BOARD, 'A2', 1, 'PB1');
    INSERT INTO BOARD (ID_BOARD, ID_CELL, FILL, ID_PIECE) VALUES (pID_BOARD, 'B2', 1, 'PB2');
    INSERT INTO BOARD (ID_BOARD, ID_CELL, FILL, ID_PIECE) VALUES (pID_BOARD, 'C2', 1, 'PB3');
    INSERT INTO BOARD (ID_BOARD, ID_CELL, FILL, ID_PIECE) VALUES (pID_BOARD, 'D2', 1, 'PB4');
    INSERT INTO BOARD (ID_BOARD, ID_CELL, FILL, ID_PIECE) VALUES (pID_BOARD, 'E2', 1, 'PB5');
    INSERT INTO BOARD (ID_BOARD, ID_CELL, FILL, ID_PIECE) VALUES (pID_BOARD, 'F2', 1, 'PB6');
    INSERT INTO BOARD (ID_BOARD, ID_CELL, FILL, ID_PIECE) VALUES (pID_BOARD, 'G2', 1, 'PB7');
    INSERT INTO BOARD (ID_BOARD, ID_CELL, FILL, ID_PIECE) VALUES (pID_BOARD, 'H2', 1, 'PB8');
    INSERT INTO BOARD (ID_BOARD, ID_CELL, FILL, ID_PIECE) VALUES (pID_BOARD, 'A3', 0, NULL);
    INSERT INTO BOARD (ID_BOARD, ID_CELL, FILL, ID_PIECE) VALUES (pID_BOARD, 'B3', 0, NULL);
    INSERT INTO BOARD (ID_BOARD, ID_CELL, FILL, ID_PIECE) VALUES (pID_BOARD, 'C3', 0, NULL);
    INSERT INTO BOARD (ID_BOARD, ID_CELL, FILL, ID_PIECE) VALUES (pID_BOARD, 'D3', 0, NULL);
    INSERT INTO BOARD (ID_BOARD, ID_CELL, FILL, ID_PIECE) VALUES (pID_BOARD, 'E3', 0, NULL);
    INSERT INTO BOARD (ID_BOARD, ID_CELL, FILL, ID_PIECE) VALUES (pID_BOARD, 'F3', 0, NULL);
    INSERT INTO BOARD (ID_BOARD, ID_CELL, FILL, ID_PIECE) VALUES (pID_BOARD, 'G3', 0, NULL);
    INSERT INTO BOARD (ID_BOARD, ID_CELL, FILL, ID_PIECE) VALUES (pID_BOARD, 'H3', 0, NULL);
    INSERT INTO BOARD (ID_BOARD, ID_CELL, FILL, ID_PIECE) VALUES (pID_BOARD, 'A4', 0, NULL);
    INSERT INTO BOARD (ID_BOARD, ID_CELL, FILL, ID_PIECE) VALUES (pID_BOARD, 'B4', 0, NULL);
    INSERT INTO BOARD (ID_BOARD, ID_CELL, FILL, ID_PIECE) VALUES (pID_BOARD, 'C4', 0, NULL);
    INSERT INTO BOARD (ID_BOARD, ID_CELL, FILL, ID_PIECE) VALUES (pID_BOARD, 'D4', 0, NULL);
    INSERT INTO BOARD (ID_BOARD, ID_CELL, FILL, ID_PIECE) VALUES (pID_BOARD, 'E4', 0, NULL);
    INSERT INTO BOARD (ID_BOARD, ID_CELL, FILL, ID_PIECE) VALUES (pID_BOARD, 'F4', 0, NULL);
    INSERT INTO BOARD (ID_BOARD, ID_CELL, FILL, ID_PIECE) VALUES (pID_BOARD, 'G4', 0, NULL);
    INSERT INTO BOARD (ID_BOARD, ID_CELL, FILL, ID_PIECE) VALUES (pID_BOARD, 'H4', 0, NULL);
    INSERT INTO BOARD (ID_BOARD, ID_CELL, FILL, ID_PIECE) VALUES (pID_BOARD, 'A5', 0, NULL);
    INSERT INTO BOARD (ID_BOARD, ID_CELL, FILL, ID_PIECE) VALUES (pID_BOARD, 'B5', 0, NULL);
    INSERT INTO BOARD (ID_BOARD, ID_CELL, FILL, ID_PIECE) VALUES (pID_BOARD, 'C5', 0, NULL);
    INSERT INTO BOARD (ID_BOARD, ID_CELL, FILL, ID_PIECE) VALUES (pID_BOARD, 'D5', 0, NULL);
    INSERT INTO BOARD (ID_BOARD, ID_CELL, FILL, ID_PIECE) VALUES (pID_BOARD, 'E5', 0, NULL);
    INSERT INTO BOARD (ID_BOARD, ID_CELL, FILL, ID_PIECE) VALUES (pID_BOARD, 'F5', 0, NULL);
    INSERT INTO BOARD (ID_BOARD, ID_CELL, FILL, ID_PIECE) VALUES (pID_BOARD, 'G5', 0, NULL);
    INSERT INTO BOARD (ID_BOARD, ID_CELL, FILL, ID_PIECE) VALUES (pID_BOARD, 'H5', 0, NULL);
    INSERT INTO BOARD (ID_BOARD, ID_CELL, FILL, ID_PIECE) VALUES (pID_BOARD, 'A6', 0, NULL);
    INSERT INTO BOARD (ID_BOARD, ID_CELL, FILL, ID_PIECE) VALUES (pID_BOARD, 'B6', 0, NULL);
    INSERT INTO BOARD (ID_BOARD, ID_CELL, FILL, ID_PIECE) VALUES (pID_BOARD, 'C6', 0, NULL);
    INSERT INTO BOARD (ID_BOARD, ID_CELL, FILL, ID_PIECE) VALUES (pID_BOARD, 'D6', 0, NULL);
    INSERT INTO BOARD (ID_BOARD, ID_CELL, FILL, ID_PIECE) VALUES (pID_BOARD, 'E6', 0, NULL);
    INSERT INTO BOARD (ID_BOARD, ID_CELL, FILL, ID_PIECE) VALUES (pID_BOARD, 'F6', 0, NULL);
    INSERT INTO BOARD (ID_BOARD, ID_CELL, FILL, ID_PIECE) VALUES (pID_BOARD, 'G6', 0, NULL);
    INSERT INTO BOARD (ID_BOARD, ID_CELL, FILL, ID_PIECE) VALUES (pID_BOARD, 'H6', 0, NULL);
    INSERT INTO BOARD (ID_BOARD, ID_CELL, FILL, ID_PIECE) VALUES (pID_BOARD, 'A7', 1, 'PN1');
    INSERT INTO BOARD (ID_BOARD, ID_CELL, FILL, ID_PIECE) VALUES (pID_BOARD, 'B7', 1, 'PN2');
    INSERT INTO BOARD (ID_BOARD, ID_CELL, FILL, ID_PIECE) VALUES (pID_BOARD, 'C7', 1, 'PN3');
    INSERT INTO BOARD (ID_BOARD, ID_CELL, FILL, ID_PIECE) VALUES (pID_BOARD, 'D7', 1, 'PN4');
    INSERT INTO BOARD (ID_BOARD, ID_CELL, FILL, ID_PIECE) VALUES (pID_BOARD, 'E7', 1, 'PN5');
    INSERT INTO BOARD (ID_BOARD, ID_CELL, FILL, ID_PIECE) VALUES (pID_BOARD, 'F7', 1, 'PN6');
    INSERT INTO BOARD (ID_BOARD, ID_CELL, FILL, ID_PIECE) VALUES (pID_BOARD, 'G7', 1, 'PN7');
    INSERT INTO BOARD (ID_BOARD, ID_CELL, FILL, ID_PIECE) VALUES (pID_BOARD, 'H7', 1, 'PN8');
    INSERT INTO BOARD (ID_BOARD, ID_CELL, FILL, ID_PIECE) VALUES (pID_BOARD, 'A8', 1, 'TN1');
    INSERT INTO BOARD (ID_BOARD, ID_CELL, FILL, ID_PIECE) VALUES (pID_BOARD, 'B8', 1, 'CN1');
    INSERT INTO BOARD (ID_BOARD, ID_CELL, FILL, ID_PIECE) VALUES (pID_BOARD, 'C8', 1, 'AN1');
    INSERT INTO BOARD (ID_BOARD, ID_CELL, FILL, ID_PIECE) VALUES (pID_BOARD, 'D8', 1, 'DN1');
    INSERT INTO BOARD (ID_BOARD, ID_CELL, FILL, ID_PIECE) VALUES (pID_BOARD, 'E8', 1, 'RN1');
    INSERT INTO BOARD (ID_BOARD, ID_CELL, FILL, ID_PIECE) VALUES (pID_BOARD, 'F8', 1, 'AN2');
    INSERT INTO BOARD (ID_BOARD, ID_CELL, FILL, ID_PIECE) VALUES (pID_BOARD, 'G8', 1, 'CN2');
    INSERT INTO BOARD (ID_BOARD, ID_CELL, FILL, ID_PIECE) VALUES (pID_BOARD, 'H8', 1, 'TN2'); 

END createNewBoard;
/

--Fill board
CREATE OR REPLACE PROCEDURE fillBoard IS

  BEGIN

  INSERT INTO BOARD (ID_CELL, FILL, ID_PIECE) VALUES ('A1',1,'TB1');
  INSERT INTO BOARD (ID_CELL, FILL, ID_PIECE) VALUES ('B1',1,'CB1');
  INSERT INTO BOARD (ID_CELL, FILL, ID_PIECE) VALUES ('C1',1,'AB1');
  INSERT INTO BOARD (ID_CELL, FILL, ID_PIECE) VALUES ('D1',1,'DB1');
  INSERT INTO BOARD (ID_CELL, FILL, ID_PIECE) VALUES ('E1',1,'RB1');
  INSERT INTO BOARD (ID_CELL, FILL, ID_PIECE) VALUES ('F1',1,'AB2');
  INSERT INTO BOARD (ID_CELL, FILL, ID_PIECE) VALUES ('G1',1,'CB2');
  INSERT INTO BOARD (ID_CELL, FILL, ID_PIECE) VALUES ('H1',1,'TB2');
  INSERT INTO BOARD (ID_CELL, FILL, ID_PIECE) VALUES ('A2',1,'PB1');
  INSERT INTO BOARD (ID_CELL, FILL, ID_PIECE) VALUES ('B2',1,'PB2');
  INSERT INTO BOARD (ID_CELL, FILL, ID_PIECE) VALUES ('C2',1,'PB3');
  INSERT INTO BOARD (ID_CELL, FILL, ID_PIECE) VALUES ('D2',1,'PB4');
  INSERT INTO BOARD (ID_CELL, FILL, ID_PIECE) VALUES ('F2',1,'PB6');
  INSERT INTO BOARD (ID_CELL, FILL, ID_PIECE) VALUES ('G2',1,'PB7');
  INSERT INTO BOARD (ID_CELL, FILL, ID_PIECE) VALUES ('H2',1,'PB8');
  INSERT INTO BOARD (ID_CELL, FILL, ID_PIECE) VALUES ('A3',0,NULL);
  INSERT INTO BOARD (ID_CELL, FILL, ID_PIECE) VALUES ('B3',0,NULL);
  INSERT INTO BOARD (ID_CELL, FILL, ID_PIECE) VALUES ('C3',0,NULL);
  INSERT INTO BOARD (ID_CELL, FILL, ID_PIECE) VALUES ('D3',0,NULL);
  INSERT INTO BOARD (ID_CELL, FILL, ID_PIECE) VALUES ('E3',0,NULL);
  INSERT INTO BOARD (ID_CELL, FILL, ID_PIECE) VALUES ('F3',0,NULL);
  INSERT INTO BOARD (ID_CELL, FILL, ID_PIECE) VALUES ('G3',0,NULL);
  INSERT INTO BOARD (ID_CELL, FILL, ID_PIECE) VALUES ('H3',0,NULL);
  INSERT INTO BOARD (ID_CELL, FILL, ID_PIECE) VALUES ('A4',0,NULL);
  INSERT INTO BOARD (ID_CELL, FILL, ID_PIECE) VALUES ('B4',0,NULL);
  INSERT INTO BOARD (ID_CELL, FILL, ID_PIECE) VALUES ('C4',0,NULL);
  INSERT INTO BOARD (ID_CELL, FILL, ID_PIECE) VALUES ('D4',0,NULL);
  INSERT INTO BOARD (ID_CELL, FILL, ID_PIECE) VALUES ('E4',0,NULL);
  INSERT INTO BOARD (ID_CELL, FILL, ID_PIECE) VALUES ('F4',0,NULL);
  INSERT INTO BOARD (ID_CELL, FILL, ID_PIECE) VALUES ('G4',0,NULL);
  INSERT INTO BOARD (ID_CELL, FILL, ID_PIECE) VALUES ('H4',0,NULL);
  INSERT INTO BOARD (ID_CELL, FILL, ID_PIECE) VALUES ('A5',0,NULL);
  INSERT INTO BOARD (ID_CELL, FILL, ID_PIECE) VALUES ('B5',0,NULL);
  INSERT INTO BOARD (ID_CELL, FILL, ID_PIECE) VALUES ('C5',0,NULL);
  INSERT INTO BOARD (ID_CELL, FILL, ID_PIECE) VALUES ('D5',0,NULL);
  INSERT INTO BOARD (ID_CELL, FILL, ID_PIECE) VALUES ('E5',0,NULL);
  INSERT INTO BOARD (ID_CELL, FILL, ID_PIECE) VALUES ('F5',0,NULL);
  INSERT INTO BOARD (ID_CELL, FILL, ID_PIECE) VALUES ('G5',0,NULL);
  INSERT INTO BOARD (ID_CELL, FILL, ID_PIECE) VALUES ('H5',0,NULL);
  INSERT INTO BOARD (ID_CELL, FILL, ID_PIECE) VALUES ('A6',0,NULL);
  INSERT INTO BOARD (ID_CELL, FILL, ID_PIECE) VALUES ('B6',0,NULL);
  INSERT INTO BOARD (ID_CELL, FILL, ID_PIECE) VALUES ('C6',0,NULL);
  INSERT INTO BOARD (ID_CELL, FILL, ID_PIECE) VALUES ('D6',0,NULL);
  INSERT INTO BOARD (ID_CELL, FILL, ID_PIECE) VALUES ('E6',0,NULL);
  INSERT INTO BOARD (ID_CELL, FILL, ID_PIECE) VALUES ('F6',0,NULL);
  INSERT INTO BOARD (ID_CELL, FILL, ID_PIECE) VALUES ('G6',0,NULL);
  INSERT INTO BOARD (ID_CELL, FILL, ID_PIECE) VALUES ('H6',0,NULL);
  INSERT INTO BOARD (ID_CELL, FILL, ID_PIECE) VALUES ('A7',1,'PN1');
  INSERT INTO BOARD (ID_CELL, FILL, ID_PIECE) VALUES ('B7',1,'PN2');
  INSERT INTO BOARD (ID_CELL, FILL, ID_PIECE) VALUES ('C7',1,'PN3');
  INSERT INTO BOARD (ID_CELL, FILL, ID_PIECE) VALUES ('D7',1,'PN4');
  INSERT INTO BOARD (ID_CELL, FILL, ID_PIECE) VALUES ('E7',1,'PN5');
  INSERT INTO BOARD (ID_CELL, FILL, ID_PIECE) VALUES ('F7',1,'PN6');
  INSERT INTO BOARD (ID_CELL, FILL, ID_PIECE) VALUES ('G7',1,'PN7');
  INSERT INTO BOARD (ID_CELL, FILL, ID_PIECE) VALUES ('H7',1,'PN8');
  INSERT INTO BOARD (ID_CELL, FILL, ID_PIECE) VALUES ('A8',1,'TN1');
  INSERT INTO BOARD (ID_CELL, FILL, ID_PIECE) VALUES ('B8',1,'CN1');
  INSERT INTO BOARD (ID_CELL, FILL, ID_PIECE) VALUES ('C8',1,'AN1');
  INSERT INTO BOARD (ID_CELL, FILL, ID_PIECE) VALUES ('D8',1,'DN1');
  INSERT INTO BOARD (ID_CELL, FILL, ID_PIECE) VALUES ('E8',1,'RN1');
  INSERT INTO BOARD (ID_CELL, FILL, ID_PIECE) VALUES ('F8',1,'AN2');
  INSERT INTO BOARD (ID_CELL, FILL, ID_PIECE) VALUES ('G8',1,'CN2');
  INSERT INTO BOARD (ID_CELL, FILL, ID_PIECE) VALUES ('H8',1,'TN2');

END;
/
--Show board
CREATE OR REPLACE procedure showBoard (pid NUMBER) IS
   pieza varchar2(6);
   celda BOARD.ID_CELL%Type;
   estado BOARD.FILL%type;
   letra char;
   fila varchar2(100);
   pID_BOARD NUMBER(5);
   begin
      pID_BOARD := pid;
         FOR i in REVERSE  1..8 loop
      fila := (' ');
         FOR a in ascii('A') .. ascii('H') LOOP
            celda := (chr(a)||i);
               SELECT ID_PIECE,FILL into pieza,estado FROM BOARD WHERE ID_CELL =
      celda AND ID_BOARD = pID_BOARD;
               if (estado = 0) THEN
                  pieza := '   ';
               end if;
         fila := (fila || pieza || '  |  ');
         end loop;
      dbms_output.put_line(i ||'   '|| fila);
      dbms_output.put_line('__________________________________________________________________');
      dbms_output.put_line(' ');
      end loop;
            dbms_output.put_line('___'||'   A  ' || '    ' || ' B  ' || '    ' || ' C  '||
            '    ' || ' D  ' || '    ' || ' E  ' || '    ' || ' F  ' || '    ' || ' G  ' ||
            '    ' || ' H  ');
END showBoard;
/
--Pending Match
CREATE OR REPLACE PROCEDURE pendingGames IS
  Cursor match_cursor IS
  select ID_MATCH, ID_WHITE_P, ID_BLACK_P from MATCHS where GAME_STATE = 'pendiente';
  match number(5);
  opt number(5);
  whitePlayer varchar2(30);
  blackPlayer varchar2(30);

  BEGIN
    dbms_output.put_line('-------------------');
    dbms_output.put_line('Juegos pendientes: ');
    dbms_output.put_line('-------------------');
    FOR match IN match_cursor LOOP
      dbms_output.put_line('Id Partida: ' || match.ID_MATCH);
      SELECT PLAYER_NAME INTO whitePlayer from players where ID_PLAYER = match.ID_WHITE_P;
      SELECT PLAYER_NAME INTO blackPlayer from players where ID_PLAYER = match.ID_BLACK_P;
      dbms_output.put_line('Jugador Blanco: ' || whitePlayer);
      dbms_output.put_line('Jugador Negro: ' || blackPlayer);
      dbms_output.put_line('-------------------');
    END LOOP;

END;
/
--Find Match
CREATE OR REPLACE PROCEDURE findMatch(id number) IS
  match number(5);
  turn varchar2(1);
  white number(5);
  black number(5);
  board number(5);
  BEGIN
    match := id;
    select ID_BOARD,COLOR_TURN_P,ID_WHITE_P,ID_BLACK_P into board,turn,white,black
    from MATCHS
    where ID_MATCH = match;
    update MOVEMENT
    set ID_MATCH = match,
    ID_BOARD = board,
    COLOR_TURN_P = turn,
    ID_WHITE_P = white,
    ID_BLACK_P = black
    where id = 0;
    EXCEPTION
      WHEN NO_DATA_FOUND THEN
        dbms_output.put_line('No se encuentra la partida');
        update MOVEMENT
        set ID_MATCH = 99999
        where id = 0;
END findMatch;
/

--Validate game

CREATE OR REPLACE PROCEDURE validateGame IS

  idCurrentGame NUMBER(5);
  idCurrentBoard NUMBER(5);
  currentColor varchar2(1);

  BEGIN

    SELECT ID_MATCH INTO idCurrentGame FROM MOVEMENT WHERE ID_MOVEMENT = 0;
    SELECT ID_BOARD INTO idCurrentBoard FROM MOVEMENT WHERE ID_MOVEMENT = 0;
    SELECT COLOR_TURN_P INTO currentColor FROM MOVEMENT WHERE ID_MOVEMENT = 0;

    dbms_output.put_line('--------------');
    dbms_output.put_line('Tablero actual');
    dbms_output.put_line('--------------');

    showBoard(idCurrentBoard);

    dbms_output.put_line('--------------------------------------');

    IF currentColor = 'N' THEN

        dbms_output.put_line('Es el turno de las piezas negras');

    ELSE

        dbms_output.put_line('Es el turno de las piezas blancas');

    END IF;

    dbms_output.put_line('--------------------------------------');

END validateGame;
/

--Show Match
CREATE OR REPLACE PROCEDURE showMatch IS
  idPartidaAct NUMBER(5);
  ID_BOARDAct NUMBER(5);
  colorActual varchar2(1);

  BEGIN

    --UPDATE objMov set idPartida = idPartidaAct, ID_BOARD = ID_BOARDAct, colorTurno = colorActual WHERE id = 0;
    SELECT ID_MATCH INTO idPartidaAct FROM MOVEMENT WHERE ID_MOVEMENT = 0;
    SELECT ID_BOARD INTO ID_BOARDAct FROM MOVEMENT WHERE ID_MOVEMENT = 0;
    SELECT COLOR_TURN_P INTO colorActual FROM MOVEMENT WHERE ID_MOVEMENT = 0;

    IF idPartidaAct != 99999 THEN
      dbms_output.put_line('--------------');
      dbms_output.put_line('Tablero Actual');
      dbms_output.put_line('--------------');
      showBoard(ID_BOARDAct);

      dbms_output.put_line('--------------');
      IF colorActual = 'N' THEN
          dbms_output.put_line('Es el turno de las piezas: Negras');
      ELSE
          dbms_output.put_line('Es el turno de las piezas: Blancas');
      END IF;
      dbms_output.put_line('--------------');
    ELSE
      dbms_output.put_line('--------------');
      dbms_output.put_line('La partida seleccionada no existe');
      dbms_output.put_line('--------------');
      RAISE_APPLICATION_ERROR(-20000, 'Partida inexistente');
    END IF;

END showMatch;
/
--Finish Match
create or replace procedure finishMatch is
  black MOVEMENT.ID_BLACK_P%type;
  white MOVEMENT.ID_WHITE_P%type;
  playerPiece varchar2(3);
  winnings number(3);
  loses number(3);
  plays number(3);
  percents number(5,2);
  finish int;
  board number(5);
  match number(5);
   begin
      percents := 0;
      select ID_MATCH into match from MOVEMENT;
      select ID_BOARD into board from MOVEMENT;
      select ID_BLACK_P into black from MOVEMENT;
      select ID_WHITE_P into white from MOVEMENT;
      winnings := 0;
      loses := 0;
      plays := 0;
      finish := 0;
      select COUNT (ID_PIECE) into playerPiece from board where ID_PIECE = 'rb1' and ID_BOARD = board;
      if(playerPiece = 0)then
         select WINS into winnings from PLAYERS where ID_PLAYER = black;
         select TOTAL_MATCHS into plays from PLAYERS where ID_PLAYER = black;
         plays := plays + 1;
         select LOSE into loses from PLAYERS where ID_PLAYER = white;
         finish := 1;
         loses := loses + 1;
         update PLAYERS
         set LOSE = loses
         where ID_PLAYER = white;

         winnings := winnings + 1;
         percents := winnings * 100;
         percents := percents /plays;
         percents := ROUND(percents,2);
         update PLAYERS
         set WINS = winnings
         where ID_PLAYER = black;
         update PLAYERS
         set PERCENT = percents
         where ID_PLAYER = black;
         dbms_output.put_line('---------------------------------');
         dbms_output.put_line('JAQUE MATE' || '  ' || 'El jugador negro es el ganador.');
         dbms_output.put_line('---------------------------------');
      end if;
      percents := 0;
      select COUNT (ID_PIECE) into playerPiece from board where ID_PIECE = 'rn1' and ID_BOARD = board;
      if(playerPiece = 0)then
         select WINS into winnings from PLAYERS where ID_PLAYER = white;
         select TOTAL_MATCHS into plays from PLAYERS where ID_PLAYER = white;
         plays := plays + 1;
         select LOSE into loses from PLAYERS where ID_PLAYER = black;
         finish := 1;
         loses := loses + 1;
         update PLAYERS
         set LOSE = loses
         where ID_PLAYER = black;

         winnings := winnings + 1;
         percents := winnings * 100;
         percents := percents /plays;
         percents := ROUND(percents,2);
         update PLAYERS
         set WINS = winnings
         where ID_PLAYER = white;
         update PLAYERS
         set PERCENT = percents
         where ID_PLAYER = white;
         dbms_output.put_line('---------------------------------');
         dbms_output.put_line('JAQUE MATE' || '  ' || 'El jugador blanco es el ganador.');
         dbms_output.put_line('---------------------------------');
      end if;

      if(finish = 1)then
         select TOTAL_MATCHS into plays from PLAYERS where ID_PLAYER = white;
         plays := plays + 1;

         update PLAYERS
         set TOTAL_MATCHS = plays
         where ID_PLAYER = white;


         select TOTAL_MATCHS into plays from PLAYERS where ID_PLAYER = black;
         plays := plays + 1;

         update PLAYERS
         set TOTAL_MATCHS = plays
         where ID_PLAYER = black;

         update partidas
         set estado = 'finalizada'
         where idpartida = match;
         RAISE_APPLICATION_ERROR(-20000, 'Partida terminada');

      else
         dbms_output.put_line('--------------------------');
         dbms_output.put_line('La partida no ha terminado');
         dbms_output.put_line('--------------------------');

      end if;

END finishMatch;
/
--PLAYERS

--Create players
CREATE OR REPLACE PROCEDURE createPlayer(pPlayerName varchar2) IS


    BEGIN
        IF pPlayerName IS NULL THEN
            dbms_output.put_line('--------------');
            dbms_output.put_line('El nombre del jugador no puede estar vacio.');
            dbms_output.put_line('--------------');
        ELSE
            INSERT INTO players (PLAYER_NAME, WINS, LOSE, TOTAL_MATCHS, PERCENT) VALUES (pPlayerName,0,0,0,0);

            dbms_output.put_line('--------------');
            dbms_output.put_line('Se ha creado el jugador: ' || pPlayerName);
            dbms_output.put_line('--------------');
        END IF;
END;
/

--List players
CREATE OR REPLACE PROCEDURE listPlayers IS

  CURSOR playersCursor IS SELECT * FROM PLAYERS WHERE ID_PLAYER > 0;

  BEGIN
    dbms_output.put_line('Jugadores');
    dbms_output.put_line('--------------');

      FOR player in playersCursor LOOP
        dbms_output.put_line(CONCAT('Nombre: ', player.PLAYER_NAME));
        dbms_output.put_line(CONCAT('ID: ', player.ID_PLAYER));
        dbms_output.put_line('--------------');
      END LOOP;
    
END listPlayers;
/

--Show Players

CREATE OR REPLACE PROCEDURE showPlayers(pidPlayer number) IS
    CURSOR c IS SELECT * FROM PLAYERS WHERE ID_PLAYER = pidPlayer;
    BEGIN
        for player in c LOOP
            dbms_output.put_line('Identificacion: ' || player.ID_PLAYER);
            dbms_output.put_line('Nombre: ' || player.PLAYER_NAME);
            dbms_output.put_line('Total de partidas jugadas:  ' || player.TOTAL_MATCHS);
            dbms_output.put_line('Total de partidas ganadas:  ' || player.WINS);
            dbms_output.put_line('Total de partidas perdidas: ' || player.LOSE);
            dbms_output.put_line('Rendimiento: ' || player.PERCENT || '%');
            dbms_output.put_line('----------------------------------');
        END LOOP;
END showPlayers;
/

--Enter Coordinates
CREATE OR REPLACE PROCEDURE enterCoordinates(initialCoord varchar2,finalCoord varchar2) IS
  BEGIN
    UPDATE MOVEMENT SET INITIAL_COORD = initialCoord, FINAL_COORD = finalCoord WHERE ID_MOVEMENT = 0;
END;
/

--Move piece
CREATE OR REPLACE PROCEDURE movePiece IS

  initialCoord varchar2(4);
  finalCoord varchar2(4);
  idCurrentBoard NUMBER(5);
  colorTurn varchar2(1);
  initialColumn varchar2(1);
  initialRow number(1);
  finalColumn varchar2(1);
  finalRow number(1);
  initialColorCell varchar2(1);
  filledInitialCell number(1);
  filledFinalCell number(1);
  initialColorPiece varchar2(1);
  finalColorPiece varchar2(1);
  pieceType varchar2(1);

  BEGIN

  SELECT INITIAL_COORD INTO initialCoord FROM MOVEMENT WHERE ID_MOVEMENT = 0;
  SELECT FINAL_COORD INTO finalCoord FROM MOVEMENT WHERE ID_MOVEMENT = 0;
  SELECT ID_BOARD INTO idCurrentBoard FROM MOVEMENT WHERE ID_MOVEMENT = 0;
 
  IF initialCoord = 'j' OR initialCoord = 'J' THEN

    finishMatch();

  ELSE IF initialCoord = 'x' OR initialCoord = 'X' THEN

    dbms_output.put_line('---------------------------');
    dbms_output.put_line('Se ha suspendido la partida.');
    dbms_output.put_line('---------------------------');

    

  ELSE

    initialCoord := CONCAT(UPPER(SUBSTR(initialCoord,1,1)), SUBSTR(initialCoord,2,1));
    finalCoord := CONCAT(UPPER(SUBSTR(finalCoord,1,1)), SUBSTR(finalCoord,2,1));

    initialColumn := UPPER(SUBSTR(initialCoord,1,1));
    initialRow := to_number(SUBSTR(initialCoord,2,1));

    finalColumn := UPPER(SUBSTR(finalCoord,1,1));
    finalRow := to_number(SUBSTR(finalCoord,2,1));

    IF ascii(initialColumn) < ascii('A') OR ascii(initialColumn) > ascii('H') OR initialRow < 1 OR initialRow > 8 OR ascii(finalColumn) < ascii('A') OR ascii(finalColumn) > ascii('H') OR finalRow < 1 OR finalRow > 8 THEN

      dbms_output.put_line('--------------');
      dbms_output.put_line('Las coordenadas ingresadas no son validas.');
      dbms_output.put_line('Por favor ingresar nuevamente las coordenadas.');
      dbms_output.put_line('--------------');

    ELSE IF initialCoord IS NULL OR finalCoord IS NULL THEN

        dbms_output.put_line('------------------------------------------------');
        dbms_output.put_line('Coordenadas vacias.');
        dbms_output.put_line('Por favor ingresar las coordenadas correctamente.');
        dbms_output.put_line('------------------------------------------------');

    ELSE

      SELECT FILL INTO filledInitialCell FROM BOARD WHERE ID_CELL = initialCoord AND ID_BOARD = idCurrentBoard;

      IF filledInitialCell = 1 THEN

        SELECT COLOR_TURN_P INTO colorTurn FROM MOVEMENT WHERE ID_MOVEMENT = 0;

        SELECT SUBSTR(ID_PIECE,2,1) INTO initialColorPiece FROM BOARD WHERE ID_CELL = initialCoord AND ID_BOARD = idCurrentBoard;

        IF initialColorPiece = colorTurn THEN

          SELECT SUBSTR(ID_PIECE,1,1) INTO pieceType FROM BOARD WHERE ID_CELL = initialCoord AND ID_BOARD = idCurrentBoard;

          CASE pieceType

              WHEN 'P' THEN validatePawn(initialCoord, finalCoord, colorTurn, idCurrentBoard);
              WHEN 'T' THEN validateRook(initialCoord, finalCoord, colorTurn, idCurrentBoard);
              WHEN 'C' THEN validateHorse(initialCoord, finalCoord, colorTurn, idCurrentBoard);
              WHEN 'A' THEN validateBishop(initialCoord, finalCoord, colorTurn, idCurrentBoard);
              WHEN 'D' THEN validateQueen(initialCoord, finalCoord, colorTurn, idCurrentBoard);
              WHEN 'R' THEN validateKing(initialCoord, finalCoord, colorTurn, idCurrentBoard);

          END CASE;

        ELSE

            dbms_output.put_line('----------------------------------------');
            dbms_output.put_line('La pieza debe ser del color del jugador.');
            dbms_output.put_line('----------------------------------------');


        END IF;

      ELSE

          dbms_output.put_line('-------------------------------------------');
          dbms_output.put_line('No hay pieza en la coordenada seleccionada.');
          dbms_output.put_line('-------------------------------------------');

      END IF;

    END IF;

    END IF;


  END IF;
  END IF;
END;
/
--Record game
CREATE OR REPLACE PROCEDURE recordGame(pinitialCoord varchar2, pfinalCoord varchar2) IS

  initialCoord varchar2(2);
  finalCoord varchar2(2);

  TYPE piece IS RECORD(
  ID_PIECE varchar2(3), 
  initialPosition varchar2(2), 
  finalPosition varchar2(2));

  piece1 piece;

  BEGIN

  initialCoord := pinitialCoord;
  finalCoord := pfinalCoord;

  dbms_output.put_line('Coordenada de la piece por mover:');
  dbms_output.put_line(initialCoord);
  dbms_output.put_line('Coordenada destino de la piece por mover:');
  dbms_output.put_line(finalCoord);

  SELECT ID_PIECE INTO piece1.ID_PIECE FROM BOARD WHERE ID_CELL = initialCoord;

  piece1.initialPosition := initialCoord;
  piece1.finalPosition := finalCoord;

  UPDATE BOARD SET ID_PIECE = piece1.ID_PIECE, FILL = 1 WHERE ID_CELL = piece1.finalPosition;

  UPDATE BOARD SET ID_PIECE = NULL, FILL = 0 WHERE ID_CELL = piece1.initialPosition;

END;
/





