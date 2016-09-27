CREATE OR REPLACE PROCEDURE PC_PERSONAS AS 
BEGIN
  declare
        cursor c_personas is
               select id_per from personas
               order by nombre_per;
        widentificacion personas.id_per%TYPE; 
        registro_persona personas%rowtype;
  begin
      open c_personas;
      fetch c_personas into widentificacion;
      dbms_output.put_line('Identiifcación: ' || widentificacion);
      close c_personas;
  end;
END PC_PERSONAS;