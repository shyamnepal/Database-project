SQL> select fax_number, module_name from module
  2      join module_details using(module_code)
  3      join sub_course using(sub_course_id)
  4      join sub_course_details using(sub_course_id)
  5      join course_details using(course_id)
  6      join student_course_class using(course_id)
  7      join student_details using(student_id)
  8      join address_details using(student_id)
  9      join address using(address_id)
 10     where module_code=(select module_code from module where module_name='Database');

FAX_NUMBER MODULE_NAME                                                                                                                                                                                                                                                                                                                                                                                                                                                                                              
---------- -------------------------                                                                                                                                                                                                                                                                                                                                                                                                                                                                                
      2345 Database                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                 

SQL> spool off;
