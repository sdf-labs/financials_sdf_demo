select
  itm.OrderItemsId,
  itm.OrderId,
  itm.ProductId
from financials.public.raw_orderitems as itm