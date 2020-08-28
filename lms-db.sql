1
SELECT *
FROM Fellowship_Candidate as f
LEFT JOIN Candidate_Qualification_details as q
ON f.candidate_id = q.candidate_id
LEFT JOIN Candidate_Stack as s
ON f.candidate_id = s.candidate_id
LEFT JOIN Requirement as r
ON s.requirement_id = r.requirement_id
LEFT JOIN Company as c
ON c.company_id = r.company_id
LEFT JOIN Tech_Stack as t
ON t.tech_stack_id = r.tech_stack_id
WHERE t.tech_name='Java';

2
SELECT * FROM Mentor as m
LEFT JOIN Mentor_Tech_Stack as mts
ON mts.mentor_id= m.mentor_id
LEFT JOIN Tech_Stack as ts
ON mts.tech_stack_id= ts.tech_stack_id
WHERE ts.tech_name='Java';

7
SELECT *
FROM Fellowship_Candidate as fc
LEFT JOIN Candidate_Stack as cs
ON fc.candidate_id = cs.candidate_id
WHERE cs.candidate_stack_id IS NULL;

8
SELECT *
FROM Fellowship_Candidate as fc
LEFT JOIN Candidate_Document as cd
ON fc.candidate_id = cd.candidate_id
WHERE cd.candidate_doc_id IS NULL;

9
SELECT *
FROM Fellowship_Candidate as fc
LEFT JOIN Candidate_Bank_Details as cbd
ON fc.candidate_id = cbd.candidate_id
WHERE cbd.candidate_bank_id IS NULL;

10
SELECT *
FROM Fellowship_Candidate
WHERE joinig_date like '%12%';

11
SELECT *
FROM Fellowship_Candidate as f
LEFT JOIN Candidate_Stack as cs
ON f.candidate_id = cs.candidate_id
WHERE DATE_FORMAT(cs.complete_date,'%M')='February';

13
SELECT *
FROM Fellowship_Candidate as f
LEFT JOIN Candidate_Qualification_Details as cq
ON f.candidate_id = cq.candidate_id
WHERE cq.passing_year = 2019;

16
SELECT ROUND(DATEDIFF(CURDATE(),joinig_Date)/7) as weeks_completed_since_joining
FROM Fellowship_Candidate
WHERE candidate_id = 2;

17
SELECT Joinig_Date
FROM Fellowship_Candidate
WHERE candidate_id = 5;

18
SELECT ROUND(DATEDIFF(CURDATE(),cs.complete_date)/7) AS week_remaining
FROM Fellowship_Candidate as fc
LEFT JOIN Candidate_Stack as cs
ON fc.candidate_id = cs.candidate_id
WHERE fc.candidate_id=5;

19
SELECT DATEDIFF(CURDATE(),cs.complete_date) AS days_remaining
FROM Fellowship_Candidate as fc
LEFT JOIN Candidate_Stack as cs
ON fc.candidate_id = cs.candidate_id
WHERE fc.candidate_id=6;



