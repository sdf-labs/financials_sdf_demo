

create or replace transient table FINANCIALS.PUBLIC.DIM_CUSTOMERS_2 as (select
  *
from FINANCIALS.PUBLIC_STAGING.STG_CRM_CUSTOMERS_2 as cus2);

