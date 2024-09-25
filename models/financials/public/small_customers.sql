{% set small_customers = "('Bobby Burgers', 'Garden Shop', 'Joe Schmo Ice Cream')" %} 
WITH stg_crm_customers AS (
{#-
    Normally we would select from the table here, but we are using seeds to load
    our data in this project
#}
  
select
  *
from public_staging.stg_crm_customers
)

select
  *
from stg_crm_customers as cus
where
  cus.FullName not in {{ small_customers }}