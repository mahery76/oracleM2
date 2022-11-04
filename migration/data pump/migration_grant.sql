-- exporting
create directory my_data_pump_dir as 'C:\Users\Ramahery\Desktop\migration datapump';
grant read, write on directory my_data_pump_dir to system;

expdp system/lesdapery DIRECTORY=my_data_pump_dir DUMPFILE=expfull.dmp LOGFILE = tblsp_log.log SCHEMAS = mahery





-- importing 

create directory my_import_dir as 'C:\Users\Administrator\Desktop\migration datapump';
grant read on directory my_import_dir to system;
grant write on directory my_import_dir to system;
grant imp_full_database,exp_full_database to system;


impdp system/lesdapery DIRECTORY=my_import_dir DUMPFILE=expfull.dmp LOGFILE = imp_log.log SCHEMAS = mahery



-- expdp system/test DIRECTORY=my_data_pump_dir DUMPFILE=expfull.dmp LOGFILE = tblsp_log.log TABLESPACES = migration


-- reduce tablespace size
PURGE TABLESPACE migration;
ALTER TABLESPACE migration COALESCE;
ALTER DATABASE DATAFILE 'C:\ORACLEXE\APP\ORACLE\PRODUCT\11.2.0\SERVER\DATABASE\MIGRATION.DBF' RESIZE 10M;



select 'C:\Users\Ramahery\Desktop\migration datapump' from DBA_DIRECTORIES where DIRECTORY_NAME = 'my_data_dump_dir';

