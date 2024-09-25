{% set small_customers = "('McDonalds', 'Walmart', 'Amazon')" %} 
WITH stg_crm_customers AS (
select
  CUSTOMERID,
  FULLNAME,
  LASTNAMEASDF,
  PHONENUMBER,
  EMAILADDRESS, 
  ADDRESS,
  POSTALZIP
from public_staging.stg_crm_customers
)

select
  *
from stg_crm_customers as cus
where
  cus.FullName not in {{ small_customers }}