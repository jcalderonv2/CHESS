CLEAR SCREEN
EXECUTE selectPlayer()
PROMPT Ingrese el Id del jugador 1
ACCEPT idPlayer1 
PROMPT Ingrese el Id del jugador 2
ACCEPT idPlayer2
EXECUTE createGame(&idPlayer1,&idPlayer2)
EXECUTE validateGame()
PROMPT Para salir, elija X.
PROMPT Ingrese las coordenadas de su movimiento:
PROMPT Pieza a mover: 
ACCEPT x
PROMPT Coordenada destino la pieza por mover: 
ACCEPT y 
EXECUTE enterCoordinates('&x','&y')
EXECUTE movePiece
@game
ACCEPT NOTHING