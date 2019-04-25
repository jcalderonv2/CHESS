SET define ON
SET verify OFF
SET serveroutput ON
CLEAR SCREEN

-- create menu structure
PROMPT *** AJEDROSS ***
PROMPT * Menu principal *
PROMPT
PROMPT Seleccione una opcion:
PROMPT
PROMPT
PROMPT 1) Crear jugador
PROMPT 2) Ver estadisticas de jugador
PROMPT 3) Crear nueva partida
PROMPT 4) Reanudar ultima partida
PROMPT 5) Salir

PROMPT
ACCEPT CHOICE
PROMPT


PROMPT &CHOICE

column script new_value v_script

set term off

SELECT CASE &CHOICE
    WHEN 1  THEN 'create_player.sql'
    WHEN 2  THEN 'player_statistics.sql'
    WHEN 3  THEN 'create_match.sql'
    WHEN 4  THEN 'game.sql'
    WHEN 5  THEN 'exit.sql'
    end as script
from dual;

set term on

@&v_script.

@menu