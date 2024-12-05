select 
  OrderQuantity 
from public_operations.fct_orders
where 
  OrderQuantity < 0