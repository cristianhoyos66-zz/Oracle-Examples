--departamentos

alter table departamentos add constraint 
	pk_departamentos primary key(codigo_dep);
	
alter table departamentos add constraint 
	nn_nombre_departamentos check(nombre_dep is not null);
	
--empleados

alter table empleados add constraint 
	pk_empleados primary key(id_emp);
	
alter table empleados add constraint 
	nn_nombre_empleado check(nombre_emp is not null);
	
alter table empleados add constraint 
	nn_apellido1_empleado check(apellido1 is not null);
	
alter table empleados add constraint 
	nn_codigo_dep_empleado check(codigo_dep_empleado is not null);
	
alter table empleados add constraint 
	nn_id_jefe_empleado check(id_jefe is not null);
	
alter table empleados add constraint
	fk_departamento_empleado foreign key (codigo_dep_empleado)
	references departamentos(codigo_dep);
	
alter table empleados add constraint
	fk_jefe_empleado foreign key (id_jefe)
	references empleados(id_emp);
	
	

	

	