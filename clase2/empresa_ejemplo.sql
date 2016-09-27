DROP TABLE IF EXISTS departamentos
DROP TABLE IF EXISTS empleados;

create table departamentos
	(
		codigo_dep integer,
		nombre_dep varchar2(50)
	)
	tablespace cbdii;
	
create table empleados
	(
		id_emp integer,
		nombre_emp varchar2(50),
		apellido1 varchar2(50),
		apellido2 varchar2(50),
		codigo_dep_empleado integer,
		id_jefe integer
	)
	tablespace cbdii;
	
