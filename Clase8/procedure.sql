CREATE OR REPLACE PROCEDURE numeros IS
BEGIN
  DECLARE
    wnumero_random integer;
    wpromedio integer;
    wtotal_numeros integer := 0;
    wtotal_numero_tabla integer;
    type array_t is varray(100) of integer;
   
    BEGIN
      FOR intento IN 1..100
      LOOP
        FOR numero IN 1..6
          LOOP
            SELECT ROUND(dbms_random.value(1, 99)) into wnumero_random from dual;
            DECLARE 
              wfindNumber BOOLEAN := false;
              BEGIN
                FOR i in 1..array_t.count 
                LOOP
                  IF (array_t(i) = wnumero_random) then
                    wfindNumber := true;
                    exit;
                  end if;
                END LOOP;
              END;
            wpromedio := wnumero_random / wtotal_numeros;
            IF wpromedio >  THEN
              exit;
            END IF;
            INSERT INTO TBL_CLASE8 (RANDOM_NUMBER, NAME_EXAMPLE) VALUES (wnumero_random, 'Mariana' || wtotal_registros);   
          END LOOP;
      END LOOP;
                     
      dbms_output.put_line('Número de registros: ' || wnumero_resgistros);
    END;
END;
/