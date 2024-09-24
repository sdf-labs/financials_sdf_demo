

create or replace transient table FINANCIALS.PUBLIC_STAGING.STG_FURNITURE_MART_ORDERS as (select
  ord.OrderId,
  ord.CustomerId,
  ord.SalesPerson as SalesPerson,
  cast(ord.OrderPlacedTimestamp as date) as OrderPlacedTimestamp,
  ord.OrderStatus,
  ord.UpdatedAt as UpdatedAt
from FINANCIALS.PUBLIC.RAW_ORDERS as ord);

