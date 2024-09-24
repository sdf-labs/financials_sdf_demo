

create or replace transient table FINANCIALS.PUBLIC_STAGING.STG_FURNITURE_MART_ORDERITEMS as (select
  itm.OrderItemsId,
  itm.OrderId,
  itm.ProductId
from FINANCIALS.PUBLIC.RAW_ORDERITEMS as itm);

