SELECT 
   column_id, classifiers
FROM  
   sdf.information_schema.columns
WHERE
   CONTAINS_ARRAY_VARCHAR(classifiers, 'PII')
   and schema_name = 'analysis';