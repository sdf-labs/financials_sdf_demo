select
  itm.OrderItemsId,
  CAST(itm.OrderId as varchar) as OrderId,
  itm.ProductId
from financials.public.raw_orderitems as itm