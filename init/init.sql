create database x_bank;
create database db_test;
CREATE USER daste_khar WITH PASSWORD 'daste_khar_test';
GRANT ALL PRIVILEGES ON DATABASE db_test TO daste_khar;
CREATE ROLE admin_role WITH LOGIN PASSWORD '123456';
ALTER ROLE admin_role WITH SUPERUSER;