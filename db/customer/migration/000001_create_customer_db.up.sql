create schema customer;

CREATE TYPE CUSTOMER.ID_TYPE AS ENUM ('None', 'Card', 'Passport','GovernmentPaper');
CREATE TYPE CUSTOMER.STATUS AS ENUM ('UnKnown', 'Active', 'Inactive','Banned','Expired','Deceased');

CREATE TABLE CUSTOMER.TBL_CUSTOMER (
    ID UUID PRIMARY KEY,         -- UUID for ID field
    customer_id TEXT,            -- CustomerID as TEXT (you can use VARCHAR if needed)
    id_type CUSTOMER.ID_TYPE,    -- IdType as custom ENUM type
    email TEXT,                  -- Email as TEXT
    mobile TEXT,                 -- Mobile as TEXT
    address TEXT,                -- Address as TEXT (if not structured)
    first_name TEXT,             -- FirstName as TEXT
    middle_name TEXT,            -- MiddleName as TEXT
    last_name TEXT,              -- LastName as TEXT
    created_at TIMESTAMP,        -- CreatedAt as TIMESTAMP
    updated_at TIMESTAMP,        -- UpdatedAt as TIMESTAMP
    stat CUSTOMER.STATUS,        -- Status as custom ENUM type
    picture TEXT,                -- Picture as TEXT
    sign TEXT,                   -- sign picture
    document TEXT                -- Document as TEXT
);

CREATE UNIQUE INDEX idx_unique_customer_id ON CUSTOMER.TBL_CUSTOMER (customer_id);
CREATE UNIQUE INDEX idx_unique_customer_email ON CUSTOMER.TBL_CUSTOMER(email);
CREATE UNIQUE INDEX idx_unique_customer_mobile ON CUSTOMER.TBL_CUSTOMER (mobile);
