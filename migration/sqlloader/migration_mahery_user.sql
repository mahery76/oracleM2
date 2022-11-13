select * from dba_data_files;

CREATE TABLESPACE migration 
datafile 'migration.dbf'
SIZE 2M;

CREATE TEMPORARY TABLESPACE temp_migr
TEMPFILE 'temp_migration.dbf' SIZE 2M;

CREATE USER Mahery
IDENTIFIED BY "test"
DEFAULT TABLESPACE migration
QUOTA 1M ON migration
TEMPORARY TABLESPACE temp_migr
QUOTA 5M ON system;

GRANT create session, create any table, alter any table to Mahery;

