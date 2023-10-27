create table raw.courses(
 code_module varchar(255),
 code_presentation varchar(255),
 module_presentation_length varchar(255)
);

create table raw.student_info(
 code_module varchar(255), 
 code_presentation varchar(255), 
 id_student int, 
 gender varchar(255), 
 region varchar(255),
 highest_education varchar(255), 
 imd_band varchar(255), 
 age_band varchar(255), 
 num_of_prev_attempts int,
 studied_credits int, 
 disability varchar(255), 
 final_result varchar(255)
);
create table raw.student_assessment(
 id_assessment int, 
 id_student int, 
 date_submitted int, 
 is_banked int, 
 score float
);
create table raw.assessments(
 code_module varchar(255), 
 code_presentation varchar(255), 
 id_assessment int, 
 assessment_type varchar(255),
 date int, 
 weight int
);
create table raw.student_registration(
 code_module varchar(255), 
 code_presentation varchar(255), 
 id_student int, 
 date_registration int,
 date_unregistration int
);

create table raw.student_vle(
 code_module varchar(255), 
 code_presentation varchar(255), 
 id_student int, 
 id_site int, 
 date int,
 sum_click int
);

create table raw.vle(
 id_site int, 
 code_module varchar(255), 
 code_presentation varchar(255), 
 activity_type varchar(255),
 week_from int,
 week_to int
);