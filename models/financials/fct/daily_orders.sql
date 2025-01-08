select   
  cast(OrderPlacedTimestamp as date) OrderPlacedDate,
  OrderStatus as NumberOfOrdersplaced,  
  
  count(case when OrderStatus = 'packaged' then OrderId end) as NumberOfOrdersshipped,
  
  count(case when OrderStatus = 'returned' then OrderId end) as NumberOfOrdersreturned
  
from orders
group by 1,2;