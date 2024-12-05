select 
  numberofordersshipped 
from public_operations.fct_daily_orders
where 
  numberofordersshipped is null