CREATE TABLESPACE UDPAOKER LOGGING DATAFILE '/home/cristianhoyos66/Documentos/universidad/BD2/DATAFILES/UDPAOKER.dbf' size 2G extent management local segment space management auto;

create user UDPOKER profile default identified by 1234 default tablespace UDPOKER temporary tablespace temp account unlock;

grant connect, resource, dba to UDPOKER; 