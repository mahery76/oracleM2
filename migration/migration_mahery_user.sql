select * from dba_data_files;

CREATE TABLESPACE migration 
datafile 'migration.dbf'
SIZE 2M;

CREATE TEMPORARY TABLESPACE temp_migr
TEMPFILE 'temp_migration.dbf' SIZE 2M;

-- SELECT pdb_name from dba_pdbs;
-- alter session set container=XEPDB1;

CREATE USER Mahery
IDENTIFIED BY "test"
DEFAULT TABLESPACE migration
QUOTA 10M ON migration
TEMPORARY TABLESPACE temp_migr
QUOTA 5M ON system;

GRANT create session, create any table, alter any table to Mahery;

grant imp_full_database,exp_full_database to mahery;

grant imp_full_database,exp_full_database to system;

