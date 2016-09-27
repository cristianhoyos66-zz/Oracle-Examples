DROP SEQUENCE TBL_JUEGOS_SEQ;
DROP SEQUENCE TBL_TORNEOS_SEQ;
DROP SEQUENCE TBL_COMBINACIONES_SEQ;
DROP SEQUENCE TBL_TIPO_IDENTIFICACIONES_SEQ;
DROP SEQUENCE TBL_GENEROS_SEQ;

create sequence TBL_JUEGOS_SEQ start with 1 increment by 1 nomaxvalue;
create sequence TBL_TORNEOS_SEQ start with 1 increment by 1 nomaxvalue;
create sequence TBL_COMBINACIONES_SEQ start with 1 increment by 1 nomaxvalue;
create sequence TBL_TIPO_IDENTIFICACIONES_SEQ start with 1 increment by 1 nomaxvalue;
create sequence TBL_GENEROS_SEQ start with 1 increment by 1 nomaxvalue;

create or replace trigger TBL_JUEGOS_SEQ_TRIG
before insert on TBL_JUEGOS
for each row
   begin
     select TBL_JUEGOS_SEQ.nextval into :new.ID from dual;
   end;
   /
   
create or replace trigger TBL_TORNEOS_SEQ_TRIG
before insert on TBL_TORNEOS
for each row
   begin
     select TBL_TORNEOS_SEQ.nextval into :new.ID from dual;
   end;
   /
   
create or replace trigger TBL_COMBINACIONES_SEQ_TRIG
before insert on TBL_COMBINACIONES
for each row
   begin
     select TBL_COMBINACIONES_SEQ.nextval into :new.ID from dual;
   end;
   /
   
create or replace trigger TBL_TIDENTIFICACIONES_SEQ_TRIG
before insert on TBL_TIPO_IDENTIFICACIONES
for each row
   begin
     select TBL_TIPO_IDENTIFICACIONES_SEQ.nextval into :new.ID from dual;
   end;
   /
   
create or replace trigger TBL_GENEROS_SEQ_TRIG
before insert on TBL_GENEROS
for each row
   begin
     select TBL_PAR_JUEG_COUNTER_SEQ.nextval into :new.ID from dual;
   end;
   /
   