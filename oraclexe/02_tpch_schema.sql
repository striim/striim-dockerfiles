create user tpch identified by tpch;
 
grant connect,resource,unlimited tablespace to tpch;
grant create any directory to tpch;
ALTER USER tpch DEFAULT TABLESPACE USERS;
ALTER USER tpch TEMPORARY TABLESPACE TEMP;
 
