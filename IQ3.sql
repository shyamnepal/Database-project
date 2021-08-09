SQL> select teacher_name, salary
  2  from teacher
  3  where teacher_name like'S%'
  4  AND salary>50;

TEACHER_NAME                       SALARY                                                                                                                                                                                                                                                                                                                                                                                                                                                                           
------------------------------ ----------                                                                                                                                                                                                                                                                                                                                                                                                                                                                           
Santosh Pandey                      80000                                                                                                                                                                                                                                                                                                                                                                                                                                                                           

SQL> spool off;
