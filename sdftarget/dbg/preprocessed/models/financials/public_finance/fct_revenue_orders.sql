
with orders_revenue as(


select
  pro.OrderId,
  sum(pro.Price) as Revenue
from financials.public_staging.int_orders_items_products_joined as pro
group by 1


) 
select
  ord.OrderId,
  ord.OrderPlacedTimestamp,
  ord.UpdatedAt,
  ord.OrderStatus,
  ord.SalesPerson,
  rev.Revenue
from orders_revenue as rev
join financials.public_staging.stg_furniture_mart_orders as ord
  on rev.OrderId = ord.OrderId
