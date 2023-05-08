/*di el sh8alaa*/
/*SELECT StudentID, StudentSemester, Grade
FROM DWH_Grade G1
WHERE EXISTS (
    SELECT StudentSemester, MAX(Grade)
    FROM DWH_Grade G2
    WHERE G1.StudentSemester = G2.StudentSemester  
    GROUP BY StudentSemester
    HAVING MAX(Grade) = G1.Grade
);
*/

INSERT INTO DWH_Top_Students (StudentID, StudentSemester, Grade,date) SELECT StudentID, StudentSemester, Grade,date
FROM DWH_Grade G1
WHERE EXISTS (
    SELECT StudentSemester, MAX(Grade)
    FROM DWH_Grade G2
    WHERE G1.StudentSemester = G2.StudentSemester  
    GROUP BY StudentSemester
    HAVING MAX(Grade) = G1.Grade
);

/**/
Insert into Top_Per_Department( StudentID, DepartmentName, Grade_Perc,date)
SELECT StudentID, DepartmentName, Grade_Perc,date
FROM DWH_Graduates G1
WHERE EXISTS (
    SELECT DepartmentName, MAX(Grade_Perc)
    FROM DWH_Graduates G2
    WHERE G1.DepartmentName = G2.DepartmentName  
    GROUP BY DepartmentName
    HAVING MAX(Grade_Perc) = G1.Grade_Perc);


/**/
INSERT INTO Best_course_rate(ProfessorName, CourseName, CourseRate,pr_date)
SELECT ProfessorName, CourseName,CourseRate,pr_date
FROM DWH_Prof_rate G1
WHERE EXISTS (
    SELECT ProfessorName, MAX(CourseRate)
    FROM DWH_Prof_rate G2
    WHERE G1.ProfessorName = G2.ProfessorName  
    GROUP BY ProfessorName
    HAVING MAX(CourseRate) = G1.CourseRate
);


/*aheh*/
