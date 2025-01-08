


select
  OrderId,
  CustomerId,
  OrderStatus,
  OrderPlacedTimestamp, 
  7 as OrderQuantity
from stg.furniture_mart_orders 