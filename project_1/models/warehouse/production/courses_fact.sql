{{ config(materialized='table', schema='production') }}


SELECT 
    co.code_module,
    co.code_presentation,
    co.module_presentation_length, 
    ass.id_assessment,
    ass.assessment_type,
    COUNT(sa.id_student) as number_of_student,
    MAX(sa.score) as max_assessment_score,
    MIN(sa.score) as min_assessment_score
FROM {{ ref("courses_stg") }} co
LEFT JOIN {{ ref("assessments_stg") }} ass ON co.code_module = ass.code_module
LEFT JOIN {{ ref("student_assessment_stg") }} sa ON sa.id_assessment = ass.id_assessment
GROUP BY 
    co.code_module,
    co.code_presentation,
    co.module_presentation_length, 
    ass.id_assessment,
    ass.assessment_type


