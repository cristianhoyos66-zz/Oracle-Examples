set serveroutput on;
-- Si en campo2 las posiciÛn 3, 7 y 10 son vocales permitir 
-- insertar, sino cancelar el proceso
CREATE OR REPLACE TRIGGER CAMPO2_VOC_3_7_10
BEFORE INSERT ON PRUEBA
FOR EACH ROW
DECLARE 
  no_vocales EXCEPTION;
  campo2_menor_10 EXCEPTION;
BEGIN 
  IF INSERTING THEN
    DECLARE
      campo2 varchar2(20) := TRANSLATE(:new.campo2, '·ÈÌÛ˙¡…Õ”⁄', 'aeiouAEIOU');
    BEGIN
      IF (LENGTH(campo2) < 10) then
        RAISE campo2_menor_10;
      END IF;
      DECLARE 
        vocal_pos_3 char := SUBSTR(campo2, 3, 1);
        vocal_pos_7 char := SUBSTR(campo2, 7, 1);
        vocal_pos_10 char := SUBSTR(campo2, 10, 1);
      BEGIN
        IF (regexp_count(vocal_pos_3, '[aeiouAEIOU]') != 1 OR
            regexp_count(vocal_pos_7, '[aeiouAEIOU]') != 1 OR 
            regexp_count(vocal_pos_10, '[aeiouAEIOU]') != 1)  THEN
            RAISE no_vocales;
        END IF;
      END;
    END;
  END IF;
EXCEPTION
  WHEN no_vocales THEN 
    dbms_output.put_line('En campo2, las posiciones 3, 7 y 10 no son vocales');
    raise_application_error(-20000,'El proceso se ha cancelado');
    
  WHEN campo2_menor_10 THEN
    dbms_output.put_line('La longitud del campo 2 es menor a 10');
    raise_application_error(-20000,'El proceso se ha cancelado');
END;
/

-- Si en campo2 la posiciÛn 5, 9 y 12 son vocales permitir
-- actualizar , sino cancelar el proceso
CREATE OR REPLACE TRIGGER CAMPO2_VOC_5_9_12
BEFORE UPDATE ON PRUEBA
FOR EACH ROW
DECLARE 
  no_vocales EXCEPTION;
  campo2_menor_10 EXCEPTION;
BEGIN 
  IF UPDATING THEN
    DECLARE
      campo2 varchar2(20) := TRANSLATE(:new.campo2, '·ÈÌÛ˙¡…Õ”⁄', 'aeiouAEIOU');
    BEGIN
      IF (LENGTH(campo2) < 12) then
        RAISE campo2_menor_10;
      END IF;
      DECLARE 
        vocal_pos_3 char := SUBSTR(campo2, 5, 1);
        vocal_pos_7 char := SUBSTR(campo2, 9, 1);
        vocal_pos_10 char := SUBSTR(campo2, 12, 1);
      BEGIN
        IF (regexp_count(vocal_pos_3, '[aeiouAEIOU]') != 1 OR
            regexp_count(vocal_pos_7, '[aeiouAEIOU]') != 1 OR 
            regexp_count(vocal_pos_10, '[aeiouAEIOU]') != 1)  THEN
            RAISE no_vocales;
        END IF;
      END;
    END;
  END IF;
EXCEPTION
  WHEN no_vocales THEN 
    dbms_output.put_line('En campo2, las posiciones 5, 9 y 12 no son vocales');
    raise_application_error(-20000,'El proceso se ha cancelado');
    
  WHEN campo2_menor_10 THEN
    dbms_output.put_line('La longitud del campo 2 es menor a 12');
    raise_application_error(-20000,'El proceso se ha cancelado');
END;
/

-- Determinar seg˙n el campo 3 cuantos registros se insertan 
-- y actualizan por dÌa 


-- Determinar cuantos registros no son insertados ni actualizados
-- por dÌa