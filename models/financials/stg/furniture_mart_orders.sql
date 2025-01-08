select
  OrderId,
  CustomerId,
  SalesPerson as SalesPerson,
  cast(OrderPlacedTimestamp as date) as OrderPlacedDate,
  OrderStatus,
  UpdatedAt as UpdatedAt
from financials.public.raw_orders