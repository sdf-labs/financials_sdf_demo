

create or replace transient table FINANCIALS.PUBLIC_FINANCE.FCT_REVENUE_ORDERS as (with orders_revenue as(


select
  pro.OrderId,
  sum(pro.Price) as Revenue
from FINANCIALS.PUBLIC_STAGING.INT_ORDERS_ITEMS_PRODUCTS_JOINED as pro
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
join FINANCIALS.PUBLIC_STAGING.STG_FURNITURE_MART_ORDERS as ord
  on rev.OrderId = ord.OrderId);

