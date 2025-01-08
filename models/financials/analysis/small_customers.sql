{% set small_customers = "('Bobby Burgers', 'Garden Shop', 'Joe Schmo Ice Cream')" %} 
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
  FullName not in {{ small_customers }}
{% if builtin.is_incremental_mode %}
  and UpdatedAt > (select max(UpdatedAt) from small_customers)
{% endif %}