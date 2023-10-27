{{ config(materialized='table', schema='production') }}

SELECT 
  id_student
  ,gender 
  ,region 
  ,highest_education 
  ,imd_band 
  ,age_band 
  ,disability 
  
FROM {{ ref("student_info_stg") }} si
GROUP BY 
  id_student
  ,gender 
  ,region 
  ,highest_education 
  ,imd_band 
  ,age_band 
  ,disability
