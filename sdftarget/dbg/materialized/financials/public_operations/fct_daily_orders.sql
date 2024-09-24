

create or replace transient table FINANCIALS.PUBLIC_OPERATIONS.FCT_DAILY_ORDERS as (select
  cast(OrderPlacedTimestamp as date) OrderPlacedDate,
  OrderStatus as NumberOfOrdersplaced, 
  
  count(case when OrderStatus = 'packaged' then OrderId end) as NumberOfOrdersshipped,
  
  count(case when OrderStatus = 'returned' then OrderId end) as NumberOfOrdersreturned
  
from FINANCIALS.PUBLIC_OPERATIONS.FCT_ORDERS
group by 1,2);

