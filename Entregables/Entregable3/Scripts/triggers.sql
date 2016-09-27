create or replace trigger TBL_PAR_JUEG_TRIG_INS
before insert on TBL_PAR_JUEG_COMBINACIONES
for each row
   begin
    :new.COUNTER := 1;
   end;
   /
   
create or replace trigger TBL_PAR_JUEG_TRIG_UPD
before update on TBL_PAR_JUEG_COMBINACIONES
for each row
  begin
   :new.COUNTER := :old.COUNTER + 1;
  end;
  /