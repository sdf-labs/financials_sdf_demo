select
  CustomerId,
  initcap(name) as FullName,
  initcap(split_part(name, ' ', 1)) as FirstName,
  initcap(split_part(name, ' ', 2)) as LastName,
  -- Phone as PhoneNumber,
  '(' || substr(Phone, 3, 3) || ')' || ' ' || substr(Phone, 7, 9)
as PhoneNumber,
  Email as EmailAddress,
  Address,
  Region,
  PostalZip,
  Country,
  UpdatedAt
from financials.public.raw_customers 