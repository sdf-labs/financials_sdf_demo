{% set small_customers = "('McDonalds', 'Walmart', 'Amazon')" %} 
WITH crm_cus AS (
  
select
  *
from stg.crm_customers
)

select
  *
from crm_cus as cus
where
  cus.FullName not in {{ small_customers }}