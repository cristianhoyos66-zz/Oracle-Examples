--show all constraints 
select * from all_constraints where owner='CDII' and table_name='DEPARTAMENTOS'

--charge a file from a specific route
start <route_file>

--connect with user
connect / as sysdba

--show connected user
show user;

--show all database users
select * from all_users;

--see all colums from a table
desc <table_name>


--see all tables
select * from cat;

--see all tablespace
select * from dba_tablespaces;

--drop tablespace with all datafiles and contents
drop TABLESPACE cbdii including contents and datafiles;

--drop tablespace without datafiles and content
drop TABLESPACE cbdii;

--create tablespace
CREATE TABLESPACE cbdii LOGGING
	DATAFILE 'D:\CBDII\df_cbdii.dbf' size 2M
	extent management local segment space management auto;

--drop user
drop user cbdii;
--create user
create user cbdii profile default  
	identified by 1234
	default tablespace cbdii
	temporary tablespace temp 
	account unlock;
	
--add permissions to a specific user
grant connect, resource, dba to cbdii; 



