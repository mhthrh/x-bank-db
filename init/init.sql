create database root;
CREATE ROLE admin_role WITH LOGIN PASSWORD '123456';
ALTER ROLE admin_role WITH SUPERUSER;