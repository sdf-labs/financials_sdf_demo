select   
  cast(OrderPlacedDate as TIMESTAMP_LTZ) OrderPlacedTimestamp,
  OrderStatus,  
  
  count(case when OrderStatus = 'packaged' then OrderId end) as NumberOfOrdersshipped,
  
  count(case when OrderStatus = 'returned' then OrderId end) as NumberOfOrdersreturned
  
from orders
group by 1,2