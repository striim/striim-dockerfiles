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

