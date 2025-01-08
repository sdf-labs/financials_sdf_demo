{% set big_customers = "('McDonalds', 'Walmart', 'Amazon')" %} 
WITH crm_cus AS (
  
select
  *
from stg.crm_customers
)

select
  md5(FullName) as hashed_fullname,
  md5(FirstName) as hashed_firstname,
  md5(LastName) as hashed_lastname,
  md5(PhoneNumber) as hashed_phonenumber,
  md5(EmailAddress) as hashed_emailaddress,
  *
from crm_cus 
where
  FullName not in {{ big_customers }}