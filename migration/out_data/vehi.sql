set colsep ,
set pagesize 0
set trimspool on

set sqlformat csv
spool out.csv
select * from Vehicule;
spool off