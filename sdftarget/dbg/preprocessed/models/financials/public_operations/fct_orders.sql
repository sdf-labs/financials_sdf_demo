


select
  ord.OrderId,
  ord.CustomerId,
  ord.OrderStatus,
  ord.OrderPlacedTimestamp,
  7 as Ordr
from financials.public_staging.stg_furniture_mart_orders as ord
-- uncomment the join criteria below to implement a time range join. 
--   and ord.OrderPlacedTimestamp between cus.dbt_valid_from and ifnull(cus.dbt_valid_to, '2099-12-31'::timestamp_ntz)

-- filters the snapshot table to only include the active records.
-- where cus.dbt_valid_to is null
