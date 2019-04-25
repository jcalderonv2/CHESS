CLEAR SCREEN
EXECUTE validateGame()
PROMPT
PROMPT Para salir, elija X.
PROMPT Ingrese las coordenadas de su movimiento:
PROMPT Pieza a mover: 
ACCEPT x
PROMPT Destino: 
ACCEPT y 

EXECUTE enterCoordinates('&x','&y')
EXECUTE movePiece
--EXECUTE showMatch
@game

