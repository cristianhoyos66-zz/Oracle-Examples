CREATE TABLESPACE CLASE5 LOGGING
	DATAFILE 'D:\CBDII\clase5.dbf' size 2M
	extent management local segment space management auto;
    
create user CLASE5 profile default  
	identified by 1234
	default tablespace CLASE5
	temporary tablespace temp 
	account unlock;
  
grant connect, resource, dba to CLASE5; 
  
  