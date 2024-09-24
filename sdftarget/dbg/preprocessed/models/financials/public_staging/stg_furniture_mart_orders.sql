

select
  ord.OrderId,
  ord.CustomerId,
  ord.SalesPerson as SalesPerson,
  cast(ord.OrderPlacedTimestamp as date) as OrderPlacedTimestamp,
  ord.OrderStatus,
  ord.UpdatedAt as UpdatedAt
from financials.public.raw_orders as ord
