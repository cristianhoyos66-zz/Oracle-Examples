CREATE TABLESPACE CLASE8 LOGGING
	DATAFILE 'D:\CBDII\clase8.dbf' size 2M
	extent management local segment space management auto;
  
  create user CLASE8 profile default  
	identified by 1234
	default tablespace CLASE8
	temporary tablespace temp 
	account unlock;
  grant connect, resource, dba to CLASE8; 
