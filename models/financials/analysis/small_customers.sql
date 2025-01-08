{% set small_customers = "('Bobby Burgers', 'Garden Shop', 'Joe Schmo Ice Cream')" %} 
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
{% if builtin.is_incremental_mode %}
  and cus.UpdatedAt > (select max(UpdatedAt) from small_customers)
{% endif %}