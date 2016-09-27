CREATE TABLESPACE CLASE910 LOGGING DATAFILE '/home/cristianhoyos66/Documentos/universidad/BD2/DATAFILES/clase910.dbf' size 2M extent management local segment space management auto;

create user CLASE910 profile default identified by 1234 default tablespace CLASE910 temporary tablespace temp account unlock;

grant connect, resource, dba to CLASE910; 
