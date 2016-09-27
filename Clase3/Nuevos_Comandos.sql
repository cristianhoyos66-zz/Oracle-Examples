select to_char(sysdate, 'YYYY-MM-DD') from dual;

select * from dba_triggers;

select trigger_name, table_name from dba_triggers where owner = 'CBDII';

--para poder mostrar los mensajes desde la consola
SET serveroutput on;

--para eliminar totalmente objetos del tablespace
purge tablespace <nombre_tablespace>