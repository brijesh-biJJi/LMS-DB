3- find all candidate which is present today
4- find all candidate which is come late today
5- find all candidate which had gone early yesterday
6- find all candidate which is come early today

1- find all candidate having java technology
SELECT *
FROM Fellowship_Candidate as f
LEFT JOIN Candidate_Stack as s
ON f.candidate_id = s.candidate_id
LEFT JOIN Requirement as r
ON s.requirement_id = r.requirement_id
LEFT JOIN Tech_Stack as t
ON t.tech_stack_id = r.tech_stack_id
WHERE t.tech_name='Java';

2- find all mentors and ideations have java technology
SELECT * 
FROM Mentor as m
LEFT JOIN Mentor_Tech_Stack as mts
ON mts.mentor_id= m.mentor_id
LEFT JOIN Tech_Stack as ts
ON mts.tech_stack_id= ts.tech_stack_id
WHERE ts.tech_name='Java';

7- find name of candidate which did not assign technology
SELECT *
FROM Fellowship_Candidate as fc
LEFT JOIN Candidate_Stack as cs
ON fc.candidate_id = cs.candidate_id
WHERE cs.candidate_stack_id IS NULL;

8- find name of cnadidate which is not submit documents
SELECT *
FROM Fellowship_Candidate as fc
LEFT JOIN Candidate_Document as cd
ON fc.candidate_id = cd.candidate_id
WHERE cd.candidate_doc_id IS NULL;

9- find name of candidate which is not submit bank details
SELECT *
FROM Fellowship_Candidate as fc
LEFT JOIN Candidate_Bank_Details as cbd
ON fc.candidate_id = cbd.candidate_id
WHERE cbd.candidate_bank_id IS NULL;

10-find name of candidates which is joined in dec month
SELECT *
FROM Fellowship_Candidate
WHERE joinig_date like '%12%';

11-find name of candidates which is end of couse in feb
SELECT *
FROM Fellowship_Candidate as f
LEFT JOIN Candidate_Stack as cs
ON f.candidate_id = cs.candidate_id
WHERE DATE_FORMAT(cs.complete_date,'%M')='February';

12-find name of candidates which is ending date accounding to joining date if joining date is 22-02-2019


13-find all candidates which is passed out in 2019 year
SELECT *
FROM Fellowship_Candidate as f
LEFT JOIN Candidate_Qualification_Details as cq
ON f.candidate_id = cq.candidate_id
WHERE cq.passing_year = 2019;

14-which technology assign to whom candidates which is having MCA background
SELECT *
FROM Fellowship_Candidate as fc
LEFT JOIN Candidate_Qualification_Details cq
ON fc.candidate_id = cq.candidate_id
WHERE cq.degree_name = 'MCA';

15-how many candiates which is having last month




16-how many week candidate completed in the bridgelabz since joining date candidate id is 2
SELECT 
ROUND(DATEDIFF(CURDATE(),joinig_Date)/7) as weeks_completed_since_joining
FROM Fellowship_Candidate
WHERE candidate_id = 2;

17-find joining date of candidate if candidate id is 4
SELECT Joinig_Date
FROM Fellowship_Candidate
WHERE candidate_id = 5;

18-how many week remaining of candidate in the bridglabz from today if candidate id is 5
SELECT ROUND(DATEDIFF(CURDATE(),cs.complete_date)/7) AS week_remaining
FROM Fellowship_Candidate as fc
LEFT JOIN Candidate_Stack as cs
ON fc.candidate_id = cs.candidate_id
WHERE fc.candidate_id=5;

19-how many days remaining of candidate in the bridgelabz from today if candidate is is 6
SELECT DATEDIFF(CURDATE(),cs.complete_date) AS days_remaining
FROM Fellowship_Candidate as fc
LEFT JOIN Candidate_Stack as cs
ON fc.candidate_id = cs.candidate_id
WHERE fc.candidate_id=6;

20-find candidates which is deployed
SELECT * 
FROM Fellowship_Candidate f 
LEFT JOIN 
Candidate_Stack cs 
ON f.candidate_id = cs.candidate_id 
WHERE cs.complete_date IS NOT NULL;

21-find name and other details and name of company which is assign to condidate.
SELECT f.candidate_id,f.first_name, f.last_name, f.email, c.company_name
FROM Fellowship_Candidate as f
LEFT JOIN Candidate_Stack as cs
ON f.candidate_id = cs.candidate_id
LEFT JOIN Requirement as r
ON cs.requirement_id = r.requirement_id
LEFT JOIN company as c
ON r.company_id = c.company_id
WHERE c.company_id IS NOT NULL;

22-find all condidate and mentors which is related to lab= banglore/mumbai/pune.



23-find buddy mententors and ideation mentor and which technology assign to perticular candidate if candidate id is 6
SELECT  f.first_name,f.last_name, r.buddy_engg_id,r.ideation_engg_id,t.tech_name
FROM Fellowship_Candidate as f
LEFT JOIN Candidate_Stack as cs
ON f.candidate_id = cs.candidate_id
LEFT JOIN Requirement as r
ON cs.requirement_id = r.requirement_id
LEFT JOIN Tech_Stack as t
ON t.tech_stack_id = r.tech_stack_id
where r.requirement_id is not null;

