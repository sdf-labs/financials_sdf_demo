select
  cus.CustomerId,
  initcap(cus.name) as FullName,
  initcap(split_part(cus.name, ' ', 1)) as FirstName2,
  initcap(split_part(cus.name, ' ', 2)) as LastNameASDf,
  -- cus.Phone as PhoneNumber,
  '(' || substr(cus.Phone, 3, 3) || ')' || ' ' || substr(cus.Phone, 7, 9)
as PhoneNumber,
  cus.Email as EmailAddress,
  cus.Address,
  cus.Region,
  cus.PostalZip,
  cus.Country
from financials.public.raw_customers as cus