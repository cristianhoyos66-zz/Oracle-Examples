create or replace trigger TBL_LETRAS_SEQUENCE_TRIGGER
before insert on TBL_LETRAS
for each row
   begin
     select TBL_LETRAS_SEQ.nextval into :new.ID from dual;
   end;
   /

create or replace trigger TBL_JUEGOS_SEQUENCE_TRIGGER
before insert on TBL_JUEGOS
for each row
   begin
     select TBL_JUEGOS_SEQ.nextval into :new.ID from dual;
   end;
   /

create or replace trigger TBL_NUMEROS_SEQUENCE_TRIGGER
before insert on TBL_NUMEROS
for each row
   begin
     select TBL_NUMEROS_SEQ.nextval into :new.ID from dual;
   end;
   / 
