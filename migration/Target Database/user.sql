select * from dba_data_files;
select tablespace_name from dba_tablespaces order by 1;

CREATE TABLESPACE migration 
datafile 'migration2.dbf'
SIZE 2M;

-- CREATE TEMPORARY TABLESPACE temp_migr
-- TEMPFILE 'temp_migration.dbf' SIZE 2M;

-- SELECT pdb_name from dba_pdbs;


alter session set container=XEPDB1;

CREATE USER Mahery
IDENTIFIED BY "test"
DEFAULT TABLESPACE migration
QUOTA 1M ON migration
QUOTA 5M ON system; 

GRANT create session, create any table, alter any table to Mahery;

select USERNAME,ACCOUNT_STATUS,PASSWORD_VERSIONS from dba_users;


-- TO CONNECT WITH THE USER NEWLY CREATED USE THE INSTRUCTION BELLOW: 
-- Enter user-name: khristine/Password@Localhost/XEPDB1


-- EXECUTE FILE IN RELATIVE PATH




-- TRANSPARENT NETWORK SUBSTRATE
-- SYSTEM IDENTIFICATION
