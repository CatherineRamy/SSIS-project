# 📈 SSIS-project

## Project steps:

### 1- Git university dataset "Excel Files"<br>
*To understand the dataset look at ERD and Excel Files 👇 <br><br>
[Faculty dataset.xlsx](https://github.com/CatherineRamy/SSIS-project/files/11424417/Faculty.dataset.xlsx) <br> <br>
![image](https://user-images.githubusercontent.com/101058082/236911286-05666870-30f3-49d0-a750-04c469dab53b.PNG)<br> <br><br>



### 2-Transform data from source to database <br>
![image](https://user-images.githubusercontent.com/101058082/236914002-b8f999a1-7e03-4c8c-b1a8-d1de1a9571da.PNG) <br> <br><br>



### 3-Transform data from database to staging area (STG)
*First STG to get all student grade 

```
SELECT StudentID, StudentSemester, Grade,date
FROM DWH_Grade G1
WHERE EXISTS (
    SELECT StudentSemester, MAX(Grade)
    FROM DWH_Grade G2
    WHERE G1.StudentSemester = G2.StudentSemester  
    GROUP BY StudentSemester
    HAVING MAX(Grade) = G1.Grade
);
```
*Second STG to get all professor rate
```
SELECT StudentID, DepartmentName, Grade_Perc,date
FROM DWH_Graduates G1
WHERE EXISTS (
    SELECT DepartmentName, MAX(Grade_Perc)
    FROM DWH_Graduates G2
    WHERE G1.DepartmentName = G2.DepartmentName  
    GROUP BY DepartmentName
    HAVING MAX(Grade_Perc) = G1.Grade_Perc);
```
*Third STG gets graduate student
```
SELECT ProfessorName, CourseName,CourseRate,pr_date
FROM DWH_Prof_rate G1
WHERE EXISTS (
    SELECT ProfessorName, MAX(CourseRate)
    FROM DWH_Prof_rate G2
    WHERE G1.ProfessorName = G2.ProfessorName  
    GROUP BY ProfessorName
    HAVING MAX(CourseRate) = G1.CourseRate
);
```
![image](https://user-images.githubusercontent.com/101058082/236914713-a4f578eb-fe4e-453f-83f4-89a5c3d40c34.PNG) <br> <br><br>

### 4-Transform data from staging area (STG) to data warehouse
![image](https://user-images.githubusercontent.com/101058082/236918365-82639ed6-45a6-4a5a-8ae6-c99888d1adf6.PNG) <br> <br><br>


### 5-Deploy
![image](https://user-images.githubusercontent.com/101058082/236920036-9d952bdf-503a-457a-83e2-a1d729f9fb80.PNG) <br> <br><br>

### 6-Schedule
![image](https://user-images.githubusercontent.com/101058082/236920499-bda98bb7-91f3-479e-8ab2-9b237a4798e1.PNG) <br> <br><br>










