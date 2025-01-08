SELECT 
   column_id, classifiers
FROM  
   sdf.information_schema.columns
WHERE
   (NOT CONTAINS_ARRAY_VARCHAR(classifiers, 'PII.hashed') 
   AND CONTAINS_ARRAY_VARCHAR(classifiers, 'PII'))
   AND schema_name = 'ANALYSIS'