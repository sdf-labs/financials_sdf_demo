

/********************************************/


/********************************************/

-- Listing 6.8
select
  -- cast(OrderPlacedTimestamp as date) OrderPlacedDate,
  count(case when OrderStatus = 'placed' then OrderId end) as NumberOfOrdersplaced, 
  
  count(case when OrderStatus = 'packaged' then OrderId end) as NumberOfOrdersshipped,
  
  count(case when OrderStatus = 'returned' then OrderId end) as NumberOfOrdersreturned
  
from fct_orders
group by 1,2