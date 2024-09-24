 
WITH stg_crm_customers AS (
  
select
  *
from public_staging.stg_crm_customers
)

select
  *
from stg_crm_customers as cus
where
  cus.FullName not in ('McDonalds', 'Walmart', 'Amazon')
