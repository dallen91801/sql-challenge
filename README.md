# sql-challenge
Module 9 Challenge

I had difficulty with this assignment with pgAdmin not showing the rows/dataoutput.   I had to investigate why the header columns would show but not the data.   AI Assist was no help.   I ended up updating pgAdmin to the lastest version.   Once I rebooted my PC, the results showed.  

Also, I had difficulty uploading the .csv files to my tables due to a non-permission error I was receiving.   I was able to re-run pgAdmin with administrative privilages which remedied the problem.    I ran these commands to ensure that I had properly uploaded the files.  Once they all where outputted as complete, then I was able to continue with the queries.  

15:27:51
SELECT COUNT(*) FROM dept_manager;
15:27:34
SELECT COUNT(*) FROM dept_emp;
15:27:25
SELECT COUNT(*) FROM employees;
15:27:15
SELECT COUNT(*) FROM salaries;
15:25:24
sELECT COUNT(*) FROM salaries;
15:25:08
SELECT COUNT(*) FROM employees;
15:24:52
SELECT COUNT(*) FROM employees; SELECT COUNT(*) FROM salaries;
