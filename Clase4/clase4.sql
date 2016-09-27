--PRECISI�N: 3
--ESCALA: 2
DROP TABLE EMPLEADOS;
DROP TABLE DEPARTAMENTOS;
DROP TABLE DEPARTAMENTOS_CARGOS;
DROP TABLE CARGOS;

CREATE TABLE EMPLEADOS (
  ID_EMPLEADO INTEGER,
  NOMBRE_EMPLEADO VARCHAR(30),
  APELLIDO1_EMPLEADO VARCHAR(30),
  APELLIDO2_EMPLEADO VARCHAR(30),
  FECHA_NACIMIENTO_EMPLEADO DATE,
  FECHA_INGRESO_EMPLEADO DATE,
  ID_DEPARTAMENTO_EMPLEADO INTEGER,
  SALARIO_EMPLEADO INTEGER,
  ID_CARGO_EMPLEADO INTEGER
) TABLESPACE CLASE4;

CREATE TABLE DEPARTAMENTOS (
  ID_DEPARTAMENTO INTEGER,
  NOMBRE_DEPARTAMENTO VARCHAR(30),
  PORCENTAJE_DEPARTAMENTO NUMBER(5, 2)
) TABLESPACE CLASE4;


CREATE TABLE CARGOS (
  ID_CARGO INTEGER,
  NOMBRE_CARGO VARCHAR(30),
  PORCENTAJE_CARGO NUMBER (5, 2)
) TABLESPACE CLASE4;