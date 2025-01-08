select
  CustomerId,
  initcap(name) as FullName,
  initcap(split_part(name, ' ', 1)) as FirstName2,
  initcap(split_part(name, ' ', 2)) as LastNameASDf,
  -- Phone as PhoneNumber,
  '(' || substr(Phone, 3, 3) || ')' || ' ' || substr(Phone, 7, 9)
as PhoneNumber,
  Email as EmailAddress,
  Address,
  Region,
  PostalZip,
  Country
from financials.public.raw_customers 