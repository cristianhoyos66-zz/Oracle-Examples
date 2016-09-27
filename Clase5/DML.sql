INSERT INTO PRUEBA (campo1, campo2, created_at)
  VALUES (2, 'baeesdedaIosdos', sysdate);

UPDATE PRUEBA SET 
  campo2 = 'bateadedaIoe',
  updated_at = TO_DATE(sysdate, 'yyyy/mm/dd')
  WHERE campo1 = 2;
  

SELECT * FROM PRUEBA;

SELECT COUNT(*) from PRUEBA WHERE TO_CHAR(created_at, 'yyyy/mm/dd') = '2016/03/05';
