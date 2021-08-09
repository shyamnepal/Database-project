SQL> select course_name, sub_course_name
  2      from course
  3      join course_details
  4      using(course_name)
  5      join sub_course_Details
  6      using(course_id)
  7      join sub_course
  8      using(sub_course_id)
  9      where course_id=(
 10      select course_id from course_details where course_name='BSCIT');

COURSE_NAME                    SUB_COURSE_NAME                                                                                                                                                                                                                                                                                                                                                                                                                                                                      
------------------------------ ------------------------------                                                                                                                                                                                                                                                                                                                                                                                                                                                       
BSCIT                          Computing                                                                                                                                                                                                                                                                                                                                                                                                                                                                            
BSCIT                          Networking                                                                                                                                                                                                                                                                                                                                                                                                                                                                           
BSCIT                          Multimedia                                                                                                                                                                                                                                                                                                                                                                                                                                                                           

SQL> spool off;
