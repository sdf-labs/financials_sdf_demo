

select
  CAST(itm.OrderId as bigint) as OrderId,
  1000 as Price
from financials.public_staging.stg_furniture_mart_orderitems as itm