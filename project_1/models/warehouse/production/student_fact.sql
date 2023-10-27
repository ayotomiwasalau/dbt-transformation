{{ config(materialized='table', schema='production') }}

SELECT 
    si.id_student,
    si.code_module,
    si.code_presentation,
    si.num_of_prev_attempts,
    si.studied_credits,
    si.final_result,
    COUNT(sa.id_assessment) as number_of_assessments_done
FROM {{ ref("student_info_stg") }} si
LEFT JOIN {{ ref("student_assessment_stg") }} sa ON si.id_student = sa.id_student
GROUP BY 
    si.id_student,
    si.code_module,
    si.code_presentation,
    si.num_of_prev_attempts,
    si.studied_credits,
    si.final_result






