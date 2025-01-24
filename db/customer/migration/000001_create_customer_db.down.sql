DROP SCHEMA customer;
DROP SCHEMA if exists tbl_cutomer;
DROP TYPE IF EXISTS ID_TYPE;
DROP TYPE IF EXISTS STATUS;
DROP INDEX IF EXISTS idx_unique_customer_id CASCADE ;
DROP INDEX IF EXISTS idx_unique_customer_email CASCADE ;
DROP INDEX IF EXISTS idx_unique_customer_mobile CASCADE ;


