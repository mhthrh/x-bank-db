create database x_bank;
CREATE ROLE admin_role WITH LOGIN PASSWORD '123456';
ALTER ROLE admin_role WITH SUPERUSER;