CREATE OR REPLACE PROCEDURE bingo_game(nombre_juego IN VARCHAR2) IS
BEGIN
  DECLARE
    wchar_random CHAR;
    id_char INTEGER;
    id_game INTEGER;
    wnumer_random INTEGER;
    id_numer INTEGER;
    CURSOR c_number_randomb is SELECT * FROM ( SELECT ID, NUMERO FROM TBL_NUMEROS WHERE NUMERO <= 15 ORDER BY dbms_random.value ) WHERE ROWNUM < 5;
    CURSOR c_number_randomi is SELECT * FROM ( SELECT ID, NUMERO FROM TBL_NUMEROS WHERE NUMERO > 15 AND NUMERO <= 30 ORDER BY dbms_random.value ) WHERE ROWNUM < 5;
    CURSOR c_number_randomn is SELECT * FROM ( SELECT ID, NUMERO FROM TBL_NUMEROS WHERE NUMERO > 30 AND NUMERO <= 45 ORDER BY dbms_random.value ) WHERE ROWNUM < 5;
    CURSOR c_number_randomg is SELECT * FROM ( SELECT ID, NUMERO FROM TBL_NUMEROS WHERE NUMERO > 45 AND NUMERO <= 60 ORDER BY dbms_random.value ) WHERE ROWNUM < 5;
    CURSOR c_number_randomo is SELECT * FROM ( SELECT ID, NUMERO FROM TBL_NUMEROS WHERE NUMERO > 60 AND NUMERO <= 75 ORDER BY dbms_random.value ) WHERE ROWNUM < 5;
  BEGIN
    INSERT INTO TBL_JUEGOS(nombre) VALUES (nombre_juego);
    COMMIT;
        
    SELECT ID INTO id_game FROM TBL_JUEGOS WHERE nombre = nombre_juego; 
    
    SELECT * into id_char, wchar_random FROM ( SELECT ID, LETRA FROM TBL_LETRAS ORDER BY dbms_random.value) WHERE rownum = 1;
    
    dbms_output.put_line('idGame ' || id_game || ' idChar ' || id_char || ' wcharRandom ' || wchar_random);
    
    CASE wchar_random
      WHEN 'B' THEN 
        OPEN c_number_randomb;
          LOOP
             FETCH c_number_randomb INTO id_numer, wnumer_random;
             dbms_output.put_line(wnumer_random);
             INSERT INTO TBL_LETRAS_JUEGOS (ID_LETRA, ID_JUEGO, ID_NUMERO) VALUES (id_char, id_game, id_numer);
             COMMIT;
             EXIT WHEN c_number_randomb%NOTFOUND;
          END LOOP;
        CLOSE c_number_randomb;
      WHEN 'I' THEN 
        OPEN c_number_randomi;
          LOOP
             FETCH c_number_randomi INTO id_numer, wnumer_random;
             dbms_output.put_line(wnumer_random);
             INSERT INTO TBL_LETRAS_JUEGOS (ID_LETRA, ID_JUEGO, ID_NUMERO) VALUES (id_char, id_game, id_numer);
             COMMIT;
             EXIT WHEN c_number_randomi%NOTFOUND;
          END LOOP;
        CLOSE c_number_randomi;
      WHEN 'N' THEN 
        OPEN c_number_randomb;
          LOOP
             FETCH c_number_randomb INTO id_numer, wnumer_random;
             dbms_output.put_line(wnumer_random);
             INSERT INTO TBL_LETRAS_JUEGOS (ID_LETRA, ID_JUEGO, ID_NUMERO) VALUES (id_char, id_game, id_numer);
             COMMIT;
             EXIT WHEN c_number_randomb%NOTFOUND;
          END LOOP;
        CLOSE c_number_randomb;
      WHEN 'G' THEN 
        OPEN c_number_randomb;
          LOOP
             FETCH c_number_randomb INTO id_numer, wnumer_random;
             dbms_output.put_line(wnumer_random);
             INSERT INTO TBL_LETRAS_JUEGOS (ID_LETRA, ID_JUEGO, ID_NUMERO) VALUES (id_char, id_game, id_numer);
             COMMIT;
             EXIT WHEN c_number_randomb%NOTFOUND;
          END LOOP;
        CLOSE c_number_randomb;
      WHEN 'O' THEN 
        OPEN c_number_randomb;
          LOOP
             FETCH c_number_randomb INTO id_numer, wnumer_random;
             dbms_output.put_line(wnumer_random);
             INSERT INTO TBL_LETRAS_JUEGOS (ID_LETRA, ID_JUEGO, ID_NUMERO) VALUES (id_char, id_game, id_numer);
             COMMIT;
             EXIT WHEN c_number_randomb%NOTFOUND;
          END LOOP;
        CLOSE c_number_randomb;
    END CASE;
  END;
END;
/
