SQL> select student_name, sub_course_name
  2      from sub_course
  3      join sub_course_Details
  4      using(sub_course_id)
  5      join course_details
  6      using(course_id)
  7      join student_course_class
  8      using(course_id)
  9      join student_Details
 10      using(student_id)
 11      join student
 12      using(phone_number)
 13      where sub_course_id=(
 14      select sub_course_id from sub_course
 15      where sub_course_name='Networking');

STUDENT_NAME              SUB_COURSE_NAME                                                                                                                                                                                                                                                                                                                                                                                                                                                                           
------------------------- ------------------------------                                                                                                                                                                                                                                                                                                                                                                                                                                                            
Shyam Nepal               Networking                                                                                                                                                                                                                                                                                                                                                                                                                                                                                

SQL> spool off;
