
with orders_revenue as(
{{ orders_revenue_cte() }}
) 
select
  ord.OrderId,
  ord.OrderPlacedDate,
  ord.UpdatedAt,
  ord.OrderStatus,
  ord.SalesPerson,
  rev.Revenue
from orders_revenue as rev
join stg.furniture_mart_orders as ord
  on rev.OrderId = ord.OrderId