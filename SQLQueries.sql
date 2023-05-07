/*di el sh8alaa*/
	 SELECT StudentID, StudentSemester, Grade
FROM DWH_Grade G1
WHERE EXISTS (
    SELECT StudentSemester, MAX(Grade)
    FROM DWH_Grade G2
    WHERE G1.StudentSemester = G2.StudentSemester  
    GROUP BY StudentSemester
    HAVING MAX(Grade) = G1.Grade
);


/**/

SELECT StudentID, DepartmentName, Grade_Perc
FROM DWH_Graduates G1
WHERE EXISTS (
    SELECT DepartmentName, MAX(Grade_Perc)
    FROM DWH_Graduates G2
    WHERE G1.DepartmentName = G2.DepartmentName  
    GROUP BY DepartmentName
    HAVING MAX(Grade_Perc) = G1.Grade_Perc);


/**/

SELECT ProfessorName, CourseName, CourseRate
FROM DWH_Prof_rate G1
WHERE EXISTS (
    SELECT ProfessorName, MAX(CourseRate)
    FROM DWH_Prof_rate G2
    WHERE G1.ProfessorName = G2.ProfessorName  
    GROUP BY ProfessorName
    HAVING MAX(CourseRate) = G1.CourseRate
);


/*aheh*/
