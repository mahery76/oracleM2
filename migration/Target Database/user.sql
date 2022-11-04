select * from dba_data_files;

CREATE TABLESPACE migration 
datafile 'migration2.dbf'
SIZE 2M;

CREATE TEMPORARY TABLESPACE temp_migr
TEMPFILE 'temp_migration2.dbf' SIZE 2M;

SELECT pdb_name from dba_pdbs;
alter session set container=XEPDB1;

CREATE USER Mahery
IDENTIFIED BY "test"
DEFAULT TABLESPACE migration
QUOTA 1M ON migration
TEMPORARY TABLESPACE temp_migr
QUOTA 5M ON system;

GRANT create session, create any table, alter any table to Mahery;

select USERNAME,ACCOUNT_STATUS,PASSWORD_VERSIONS from dba_users;


-- TO CONNECT WITH THE USER NEWLY CREATED USE THE INSTRUCTION BELLOW: 
-- Enter user-name: khristine/Password@Localhost/XEPDB1




