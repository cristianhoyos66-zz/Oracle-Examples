-- TBL_LETRAS
alter table TBL_LETRAS add constraint 
	pk_tbl_letras primary key(ID);

-- TBL_JUEGOS
alter table TBL_JUEGOS add constraint 
	pk_tbl_juegos primary key(ID);
	
-- TBL_NUMEROS
alter table TBL_NUMEROS add constraint 
	pk_tbl_numeros primary key(ID);
	
-- TBL_LETRAS_JUEGOS
alter table TBL_LETRAS_JUEGOS add constraint 
	pk_tbl_letras_juegos primary key(ID_LETRA, ID_JUEGO, ID_NUMERO);
	
alter table TBL_LETRAS_JUEGOS add constraint
	fk_let_let_jueg foreign key (ID_LETRA)
	references TBL_LETRAS(ID);

alter table TBL_LETRAS_JUEGOS add constraint
	fk_jueg_let_jueg foreign key (ID_JUEGO)
	references TBL_JUEGOS(ID);

alter table TBL_LETRAS_JUEGOS add constraint
	fk_num_let_jueg foreign key (ID_NUMERO)
	references TBL_NUMEROS(ID);
