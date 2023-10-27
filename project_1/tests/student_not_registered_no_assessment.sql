SELECT id_student
FROM {{ ref("student_fact")}}
WHERE number_of_assessments_done < 0
LIMIT 5