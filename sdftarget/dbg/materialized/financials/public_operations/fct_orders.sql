

create or replace transient table FINANCIALS.PUBLIC_OPERATIONS.FCT_ORDERS as (select
  ord.OrderId,
  ord.CustomerId,
  ord.OrderStatus,
  ord.OrderPlacedTimestamp,
  7 as Ordr
from FINANCIALS.PUBLIC_STAGING.STG_FURNITURE_MART_ORDERS as ord);

