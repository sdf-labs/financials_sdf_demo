

create or replace transient table FINANCIALS.PUBLIC.BIG_CUSTOMERS as (WITH stg_crm_customers AS (
  
select
  *
from FINANCIALS.PUBLIC_STAGING.STG_CRM_CUSTOMERS
)

select
  *
from stg_crm_customers as cus
where
  cus.FullName not in ('McDonalds', 'Walmart', 'Amazon'));

