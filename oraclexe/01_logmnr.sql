connect sys/oracle as sysdba;

--Find hardware platform 
!uname -a

--Find oracle character set 

SELECT * FROM NLS_DATABASE_PARAMETERS;

--Archivelog mode must be enabled in order to generate usable redo log files.

select log_mode from v$database;

shutdown immediate

startup mount

alter database archivelog;

alter database open;

select log_mode from v$database;

--Create LogMiner Role

Drop role logmnr_admin;

create role logmnr_admin;

grant create procedure to logmnr_admin;

grant create table to logmnr_admin;

grant create session to logmnr_admin;

grant select on v_$logmnr_contents to logmnr_admin;

grant select on v_$logmnr_dictionary to logmnr_admin;

grant select on v_$logmnr_parameters to logmnr_admin;

grant select on v_$logmnr_logs to logmnr_admin;

grant select on v_$archived_log to logmnr_admin;

grant  execute_catalog_role
          , select any dictionary
          , select any transaction
          , select any table
          , create tablespace
          , drop tablespace
to logmnr_admin;

--Create LogMiner User 

drop user miner cascade;

create user miner identified by miner;

grant logmnr_admin to miner;

alter user miner quota unlimited on users;

--Supplemental logging

alter database add supplemental log data (PRIMARY KEY) COLUMNS;

select supplemental_log_data_min, supplemental_log_data_pk from v$database;

alter system switch logfile;

--create dictionary in redologs
-- Note The dictionary must be produced by the same source database that generates the redo log files that LogMiner will analyze.
-- Note Also All redo log files Must be produced by the same source database.

connect miner/miner


ALTER SESSION SET NLS_DATE_FORMAT = 'DD-MON-YYYY HH24:MI:SS';


COLUMN name             FORMAT A65 HEAD "Log File Name"
COLUMN first_time       FORMAT A20 HEAD "First Time"
COLUMN dictionary_begin FORMAT A5  HEAD "Dict|Begin"
COLUMN dictionary_end   FORMAT A5  HEAD "Dict|End"
COLUMN next_time        FORMAT A20 HEAD "Next Time"

SELECT
    name
  , first_time
  , dictionary_begin
  , dictionary_end
  , next_time
FROM
    v$archived_log
WHERE
      name IS NOT NULL
  AND first_time > '11-AUG-2014 10:07:34'
ORDER BY
    sequence#;

exit;
