SQL> select m.module_name, sc.sub_Course_name
  2     from module m
  3     join module_details md
  4     using(module_code)
  5     join sub_course sc
  6     using(sub_course_id)
  7     where sub_course_id=
  8      (select sub_course_id from sub_course where sub_course_name ='Multimedia');

MODULE_NAME               SUB_COURSE_NAME                                                                                                                                                                                                                                                                                                                                                                                                                                                                           
------------------------- ------------------------------                                                                                                                                                                                                                                                                                                                                                                                                                                                            
Digital Design            Multimedia                                                                                                                                                                                                                                                                                                                                                                                                                                                                                
3D Modelling              Multimedia                                                                                                                                                                                                                                                                                                                                                                                                                                                                                

SQL> spool off;
