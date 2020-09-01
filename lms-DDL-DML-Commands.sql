User Details:
-------------
CREATE TABLE user_details(
    user_id        INT NOT NULL AUTO_INCREMENT,
    email          VARCHAR (30) DEFAULT NULL,
    first_name     VARCHAR (30) DEFAULT NULL,
    last_name      VARCHAR (30) DEFAULT NULL,
    password       VARCHAR (30) DEFAULT NULL,
    contact_number BIGINT DEFAULT NULL,
    verified       BOOLEAN DEFAULT NULL,
    creator_stamp  DATETIME DEFAULT NULL, 
    creator_user   VARCHAR (30) DEFAULT NULL,
    PRIMARY KEY (user_id)
);

TRIGGER CAMMOAND:
_________________
CREATE TRIGGER tr_ins_User
BEFORE INSERT ON  user_details
FOR EACH ROW
SET NEW.last_name = UPPER(NEW.last_name);

INSERT QUERY:
--------------
INSERT INTO user_details VALUES(1,'brijesh@gmail.com','Brijesh','Salian','abcd',7708144321,true,'2019-12-23','Briju');
INSERT INTO user_details VALUES(2,'baijith@gmail.com','Baijith','bhai','baiji123',898686252,true,'2019-11-21','Briju');

INSERT INTO user_details VALUES(4,'uday@gmail.com','Uday','chandra','uday123',897686252,true,'2020-12-21','Briju');

STORED PROCEDURE:
--------------------

 DROP PROCEDURE IF EXISTS pro_user_details;
 DELIMITER //
 CREATE PROCEDURE pro_user_details(IN id INT, 
									IN email VARCHAR(30), 
                                    IN first_name VARCHAR(30),
                                    IN last_name VARCHAR(30),
                                    IN pass VARCHAR(20), 
                                    IN contact BIGINT,
                                    IN verified BOOLEAN,
                                    IN  creator_stamp  DATETIME,
                                    IN creator_user VARCHAR (30))
BEGIN 
	INSERT INTO user_details VALUES(id,email,first_name,last_name,pass,contact,verified,creator_stamp,creator_user);
    SELECT * FROM user_details;
END//
DELIMITER ;

call pro_user_details(4,'uday@gmail.com','Uday','chandra','uday123',897686252,true,'2020-12-21','Briju');



Hired Candidate:
----------------
CREATE TABLE hired_candidate(
id    INT NOT NULL AUTO_INCREMENT, 
first_name            VARCHAR (30) DEFAULT NULL,
middle_name           VARCHAR (30) DEFAULT NULL,
last_name             VARCHAR (30) DEFAULT NULL,
email                 VARCHAR (30) DEFAULT NULL,
hired_city 	      VARCHAR (30) DEFAULT NULL,
degree                VARCHAR (30) DEFAULT NULL, 
hired_date     	      DATETIME DEFAULT NULL,
mobile_number	      BIGINT DEFAULT NULL,
permanent_pincode     BIGINT DEFAULT NULL, 
hired_lab             VARCHAR (30) DEFAULT NULL,
attitude              DECIMAL(10,0) DEFAULT NULL, 
communication_remark  DECIMAL(10,0) DEFAULT NULL, 
knowledge_remark      DECIMAL(10,0) DEFAULT NULL, 
aggregate_remark      DECIMAL(10,0) DEFAULT NULL, 
status                VARCHAR (30) DEFAULT NULL, 
creator_stamp         DATETIME DEFAULT NULL, 
creator_user          VARCHAR (30) DEFAULT NULL,
PRIMARY KEY (id)
);

INSERT QUERY:
--------------
INSERT INTO hired_candidate VALUES (101,'Uday','A','C','uday4@gmail.com','Bangalore','B.Tech','2019-10-15',9935600625,575010,'HSR',4,2,3,8,'selected','2019-02-13','Briju');
INSERT INTO hired_candidate VALUES (102,'Prashanth','A','Kumar','prashanth@gmail.com','Bangalore','B.Tech','2019-10-15',9935600625,575010,'HSR',4,2,3,8,'selected','2019-02-33','Briju');


Fellowship Candidate:
----------------------
CREATE TABLE fellowship_candidate(
candidate_id          INT NOT NULL AUTO_INCREMENT, 
first_name            VARCHAR (30) DEFAULT NULL,
middle_name           VARCHAR (30) DEFAULT NULL,
last_name             VARCHAR (30) DEFAULT NULL,
email                 VARCHAR (30) DEFAULT NULL,
hired_city 	      VARCHAR (30) DEFAULT NULL,
degree                VARCHAR (30) DEFAULT NULL, 
hired_date     	      DATETIME DEFAULT NULL,
mobile_number	      BIGINT DEFAULT NULL,
permanent_pincode     BIGINT DEFAULT NULL, 
hired_lab             VARCHAR (30) DEFAULT NULL,
attitude              DECIMAL(10,0) DEFAULT NULL, 
communication_remark  DECIMAL(10,0) DEFAULT NULL, 
knowledge_remark      DECIMAL(10,0) DEFAULT NULL, 
aggregate_remark      DECIMAL(10,0) DEFAULT NULL, 
status                VARCHAR (30) DEFAULT NULL, 
creator_stamp         DATETIME DEFAULT NULL, 
creator_user          VARCHAR (30) DEFAULT NULL,
Birth_Date            DATETIME DEFAULT NULL,  
Is_Birth_Date_Verified BOOLEAN DEFAULT NULL,
Parent_Name            VARCHAR (50) DEFAULT NULL, 
Parent_Occupation      VARCHAR (30) DEFAULT NULL,
Parents_Mobile_Number  BIGINT DEFAULT NULL,
Parents_Annual_Salary  DECIMAL(10,0) DEFAULT NULL,
Local_Address          VARCHAR (255) DEFAULT NULL,  
Permanent_Address      VARCHAR (255) DEFAULT NULL,   
Photo_Path	       VARCHAR (255) DEFAULT NULL,  
Joinig_Date            DATETIME DEFAULT NULL,  
Candidate_Status       VARCHAR (30) DEFAULT NULL, 
Personal_Information   VARCHAR (255) DEFAULT NULL, 
Bank_Information       VARCHAR (255) DEFAULT NULL,  
Educational_Information VARCHAR (255) DEFAULT NULL,
Document_Status        VARCHAR (255) DEFAULT NULL,   
Remark                 DECIMAL(10,0) DEFAULT NULL,  
PRIMARY KEY (candidate_id)
);

Update Querey:
---------------
update fellowship_candidate set hired_lab='Bangalore' where candidate_id in (3,5,7,9);

ALTER QUERY:
--------------
ALTER TABLE fellowship_candidate 
ADD CONSTRAINT email_unique UNIQUE (email);

INSERT QUERY:
--------------
INSERT INTO Fellowship_Candidate
(First_Name,Middle_Name,Last_Name,Email,Hired_City,Degree,Hired_Date,Mobile_Number,Permanent_Pincode,Hired_Lab,Attitude,Communication_Remark,Knowledge_Remark
,Aggregate_Remark,
Birth_Date,Is_Birth_Date_Verified,Parent_Name,Parents_Mobile_Number,Local_Address,Permanent_Address,Joinig_Date,Candidate_Status,Document_Status)
VALUES
('Prashanth','A','Kumar','prashanth@gmail.com','Bangalore','B.Tech','2019-10-15','9935600625',575010,'HSR',4,2,3,8,
'1994-05-12',1,'Harish',1234567890,'Bangalore','Bangalore','2019-11-11','Accepted','Verified');
INSERT INTO Fellowship_Candidate
(First_Name,Middle_Name,Last_Name,Email,Hired_City,Degree,Hired_Date,Mobile_Number,Permanent_Pincode,Hired_Lab,Attitude,Communication_Remark,Knowledge_Remark
,Aggregate_Remark,
Birth_Date,Is_Birth_Date_Verified,Parent_Name,Parents_Mobile_Number,Local_Address,Permanent_Address,Joinig_Date,Candidate_Status,Document_Status)
VALUES
('Prashanth','A','Kumar','prashanth@gmail.com','Bangalore','B.Tech','2019-10-15','9935600625',575010,'HSR',4,2,3,8,
'1994-05-12',1,'Harish',1234567890,'Bangalore','Bangalore','2019-11-11','Accepted','Verified');
INSERT INTO Fellowship_Candidate
(First_Name,Middle_Name,Last_Name,Email,Hired_City,Degree,Hired_Date,Mobile_Number,Permanent_Pincode,Hired_Lab,Attitude,Communication_Remark,Knowledge_Remark
,Aggregate_Remark,
Birth_Date,Is_Birth_Date_Verified,Parent_Name,Parents_Mobile_Number,Local_Address,Permanent_Address,Joinig_Date,Candidate_Status,Document_Status)
VALUES
('Brijesh','A','Salian','briju@gmail.com','Bangalore','MCA','2019-10-15','9935600625',575010,'HSR',4,2,3,8,
'1994-10-13',1,'Ananda',1234567890,'Bangalore','Bangalore','2019-12-11','Accepted','Verified');
INSERT INTO Fellowship_Candidate
(First_Name,Middle_Name,Last_Name,Email,Hired_City,Degree,Hired_Date,Mobile_Number,Permanent_Pincode,Hired_Lab,Attitude,Communication_Remark,Knowledge_Remark
,Aggregate_Remark,
Birth_Date,Is_Birth_Date_Verified,Parent_Name,Parents_Mobile_Number,Local_Address,Permanent_Address,Joinig_Date,Candidate_Status,Document_Status)
VALUES
('Baijith','S','Bhai','baiji@gmail.com','Mangalore','MCA','2019-12-08','9935600625',575010,'HSR',4,2,3,8,
'1995-10-13',1,'Shiva',1234567890,'Mangalore','Mangalore','2019-12-20','Accepted','Verified');
INSERT INTO Fellowship_Candidate
(First_Name,Middle_Name,Last_Name,Email,Hired_City,Degree,Hired_Date,Mobile_Number,Permanent_Pincode,Hired_Lab,Attitude,Communication_Remark,Knowledge_Remark
,Aggregate_Remark,
Birth_Date,Is_Birth_Date_Verified,Parent_Name,Parents_Mobile_Number,Local_Address,Permanent_Address,Joinig_Date,Candidate_Status,Document_Status)
VALUES
('Shruti','V','Poojary','shruti@gmail.com','Mangalore','MCA','2020-03-08','9935600925',575010,'HSR',4,2,3,8,
'1995-01-23',1,'Vishwanath',1234567890,'Mangalore','Mangalore','2020-04-20','Accepted','Verified');
INSERT INTO Fellowship_Candidate
(First_Name,Middle_Name,Last_Name,Email,Hired_City,Degree,Hired_Date,Mobile_Number,Permanent_Pincode,Hired_Lab,Attitude,Communication_Remark,Knowledge_Remark
,Aggregate_Remark,
Birth_Date,Is_Birth_Date_Verified,Parent_Name,Parents_Mobile_Number,Local_Address,Permanent_Address,Joinig_Date,Candidate_Status,Document_Status)
VALUES
('Rohit','H','Kanchan','rohit@gmail.com','Mangalore','Engg','2020-03-08','9832600925',575010,'Bangalore',4,2,3,8,
'1990-05-23',1,'HariKrishna',1234567890,'Mangalore','Mangalore','2020-05-20','Accepted','Verified');


Candidate Bank Details:
-----------------------
CREATE TABLE candidate_bank_details(
candidate_bank_id           INT NOT NULL AUTO_INCREMENT, 
candidate_id                INT,  
bank_Name                   VARCHAR (255) DEFAULT NULL, 
Account_Number   			BIGINT DEFAULT NULL,
Is_Account_Num_Verified     BOOLEAN DEFAULT NULL,
Ifsc_code 				INT DEFAULT NULL,
is_ifsc_code_verified       BOOLEAN DEFAULT NULL, 
pan_number 				BIGINT DEFAULT NULL,
is_pan_number_verified      BOOLEAN DEFAULT NULL,  
addhaar_num 			BIGINT DEFAULT NULL,
is_addhaar_num_verified     BOOLEAN DEFAULT NULL,  
creator_stamp               DATETIME DEFAULT NULL, 
creator_user                VARCHAR (30) DEFAULT NULL,
PRIMARY KEY (candidate_bank_id),
FOREIGN KEY (candidate_id) REFERENCES fellowship_candidate(candidate_id)
);

INSERT QUERY:
--------------
INSERT INTO Candidate_Bank_Details
(candidate_id,bank_name,account_number,is_account_num_verified,ifsc_code,is_ifsc_code_verified,pan_number,is_pan_number_verified,addhaar_num,is_addhaar_num_verified)
VALUES(1,'HDFC',87765241,1,'HDFC43243',1,'kS18782131',1,678255324523,1),
(2,'Vijaya',15377242,1,'Vij908',1,'AR128632',1,85255324524,1);

 Candidate Qualification:
-------------------------
CREATE TABLE candidate_qualification_details(
candidate_qualification_id 	INT NOT NULL AUTO_INCREMENT,  
candidate_id               	INT, 
diploma                    	VARCHAR (255) DEFAULT NULL,  
degree_name 			VARCHAR (255) DEFAULT NULL, 
is_degree_name_verified 	BOOLEAN DEFAULT NULL,
employee_decipline 		VARCHAR (255) DEFAULT NULL, 
is_employee_decipline_verified  BOOLEAN DEFAULT NULL,
passing_year 		INT DEFAULT NULL,
is_passing_year_verified   	BOOLEAN DEFAULT NULL,
aggr_per 			DECIMAL(3,2) DEFAULT NULL,
final_year_per 		DECIMAL(3,2) DEFAULT NULL,
is_final_year_per_verified      BOOLEAN DEFAULT NULL, 
training_institute         	VARCHAR (255) DEFAULT NULL,  
is_training_institute_verified  BOOLEAN DEFAULT NULL, 
training_duration_month 		INT DEFAULT NULL,
is_training_duration_month_verified BOOLEAN DEFAULT NULL, 
other_training 			VARCHAR (255) DEFAULT NULL, 
is_other_training_verified      BOOLEAN DEFAULT NULL, 
creator_stamp               	DATETIME DEFAULT NULL, 
creator_user                	VARCHAR (30) DEFAULT NULL,
 PRIMARY KEY (candidate_qualification_id),
 FOREIGN KEY (candidate_id) REFERENCES fellowship_candidate(candidate_id)
);

INSERT QUERY:
--------------
INSERT INTO Candidate_Qualification_Details
(candidate_id,degree_name,is_degree_name_verified,is_employee_decipline_verified,passing_year,is_passing_year_verified,aggr_per,final_year_per,is_final_year_per_verified,training_institute,is_training_institute_verified,is_training_duration_month_verified)
VALUES
(1,'BE',1,1,2018,1,50.12,55.11,1,'Vijaya',1,1),
(2,'MCA',1,1,2018,1,54.13,65.33,1,'Acharya',1,1);
INSERT INTO Candidate_Qualification_Details
(candidate_id,degree_name,is_degree_name_verified,is_employee_decipline_verified,passing_year,is_passing_year_verified,aggr_per,final_year_per,is_final_year_per_verified,training_institute,is_training_institute_verified,is_training_duration_month_verified)
VALUES
(3,'MCA',1,1,2019,1,70.70,71.72,1,'SDIT',1,1);


Candidate Documents:
-------------------- 
CREATE TABLE candidate_document(
candidate_doc_id 		INT NOT NULL AUTO_INCREMENT,  
candidate_id               	INT, 
doc_type 			VARCHAR (255) DEFAULT NULL, 
doc_path   			VARCHAR (255) DEFAULT NULL, 
status  			VARCHAR (255) DEFAULT NULL, 
creator_stamp               	DATETIME DEFAULT NULL, 
creator_user                	VARCHAR (30) DEFAULT NULL,
 PRIMARY KEY (candidate_doc_id),
 FOREIGN KEY (candidate_id) REFERENCES fellowship_candidate(candidate_id)
);

INSERT QUERY:
--------------
INSERT INTO Candidate_Document
(candidate_id,doc_type,status)
VALUES
(1,'Mark sheet','Verified'),
(2,'Mark sheet','Verified');

Company:
--------
CREATE TABLE company(
company_id		 INT NOT NULL AUTO_INCREMENT,  
company_name		 VARCHAR (255) DEFAULT NULL,  
address			 VARCHAR (255) DEFAULT NULL,  
location		 VARCHAR (255) DEFAULT NULL,  
status			 VARCHAR (255) DEFAULT NULL,  
creator_stamp            DATETIME DEFAULT NULL, 
creator_user             VARCHAR (30) DEFAULT NULL,
 PRIMARY KEY (company_id)
);

Alter Query:
------------
ALTER TABLE company 
ADD CONSTRAINT company_name_unique UNIQUE (company_name);

INSERT QUERY:
--------------
INSERT INTO Company
(company_name,address,location)
VALUES('Mphasis','Banglore','Banglore'),
('TCS','Mangalore','Mangalore'),
('IBM','Delhi','Delhi'),
('GOOGLE','Chennai','Chennai'),
('Infosys','Mysore','Mysore');


Maker Program:
--------------
CREATE TABLE maker_program(
maker_program_id	 INT NOT NULL AUTO_INCREMENT,   
program_name		 VARCHAR (255) DEFAULT NULL,   
program_type 		 VARCHAR (255) DEFAULT NULL,
program_link  		 VARCHAR (255) DEFAULT NULL,
tech_stack_id		 INT,  
tech_type_id		 INT,  
is_program_approved 	VARCHAR (255) DEFAULT NULL,
Description		 VARCHAR (255) DEFAULT NULL,  
status			 VARCHAR (255) DEFAULT NULL, 
creator_stamp            DATETIME DEFAULT NULL, 
creator_user             VARCHAR (30) DEFAULT NULL,
 PRIMARY KEY (maker_program_id),
FOREIGN KEY (tech_stack_id) REFERENCES tech_stack(tech_stack_id),
FOREIGN KEY (tech_type_id) REFERENCES tech_type(tech_type_id)
);

INSERT QUERY:
--------------
INSERT INTO Maker_Program
(program_name,program_type,tech_stack_id,tech_type_id,is_program_approved)
VALUES('Basic Programs','Core Java',1,1,1),
('Data Structure','Python',2,2,1),
('Standard','Java Full Stack',3,3,1);


App Parameters:
----------------
CREATE TABLE app_parameters(
app_parameter_id INT NOT NULL AUTO_INCREMENT,   
key_type VARCHAR (30) DEFAULT NULL, 
key_value VARCHAR (30) DEFAULT NULL, 
key_text VARCHAR (255) DEFAULT NULL,  
cur_status VARCHAR (255) DEFAULT NULL,  
lastupd_user VARCHAR (255) DEFAULT NULL,  
lastupd_stamp DATETIME DEFAULT NULL, 
creator_stamp DATETIME DEFAULT NULL, 
creator_user VARCHAR (30) DEFAULT NULL, 
seq_num	 	INT DEFAULT NULL,
PRIMARY KEY (app_parameter_id)
);

INSERT QUERY:
--------------

Mentor:
--------
CREATE TABLE mentor(
mentor_id INT NOT NULL AUTO_INCREMENT,
mentor_name VARCHAR (255) DEFAULT NULL,
mentor_type VARCHAR (255) DEFAULT NULL,
lab_id		INT,
Status VARCHAR (255) DEFAULT NULL,
creator_stamp DATETIME DEFAULT NULL,
creator_user VARCHAR (30) DEFAULT NULL,
 PRIMARY KEY (mentor_id),
 FOREIGN KEY (lab_id
) REFERENCES lab(lab_id)
);

INSERT QUERY:
--------------
INSERT INTO Mentor
(mentor_name,mentor_type,lab_id)
VALUES('Amrutha','lead',1),
	('Kalpesh','lead',2),
	('Varsha','ideation',1),
	('venkat','ideation',2),
	('Pooja','buddy',1),
	('Aishwarya','buddy',3);

 		
Mentor Ideation Map:
--------------------
CREATE TABLE mentor_ideation(
mentor_ideation_id INT NOT NULL AUTO_INCREMENT,   
parent_mentor_id INT,	
mentor_id INT, 
status VARCHAR (255) DEFAULT NULL,
creator_stamp DATETIME DEFAULT NULL, 
creator_user VARCHAR (30) DEFAULT NULL,
 PRIMARY KEY (mentor_ideation_id),
FOREIGN KEY (parent_mentor_id) REFERENCES mentor(mentor_id),
 FOREIGN KEY (mentor_id) REFERENCES mentor(mentor_id)
);

INSERT QUERY:
--------------
INSERT INTO Mentor_Ideation(parent_mentor_id,mentor_id,creator_stamp,creator_user)
VALUES(3,1,'2019-12-20','Kalpesh'),(4,2,'2019-12-20','Kalpesh'),(5,6,'2019-12-20','Kalpesh');



Mentor Tech Stack:
------------------
CREATE TABLE mentor_tech_stack(
mentor_tech_stack_id INT NOT NULL AUTO_INCREMENT,
mentor_id INT,
tech_stack_id 	INT,
Status VARCHAR (255) DEFAULT NULL,
creator_stamp DATETIME DEFAULT NULL,
creator_user VARCHAR (30) DEFAULT NULL,
PRIMARY KEY (mentor_tech_stack_id),
FOREIGN KEY (mentor_id) REFERENCES mentor(mentor_id),
FOREIGN KEY (tech_stack_id) REFERENCES tech_stack(tech_stack_id)
);

INSERT QUERY:
--------------
INSERT INTO Mentor_Tech_Stack(mentor_id,tech_stack_id)
values(3,1),(4,1),(5,2),(2,2),(1,3),(2,3);


Tech Stack:
-----------
CREATE TABLE tech_stack(
tech_stack_id		 INT NOT NULL AUTO_INCREMENT, 
tech_name 		 VARCHAR (255) DEFAULT NULL,
image_path		 VARCHAR (255) DEFAULT NULL,
framework 			 VARCHAR (255) DEFAULT NULL,
cur_status 		 VARCHAR (255) DEFAULT NULL,
creator_stamp            DATETIME DEFAULT NULL, 
creator_user             VARCHAR (30) DEFAULT NULL,
 PRIMARY KEY (tech_stack_id)
);

INSERT QUERY:
--------------
INSERT INTO Tech_Stack(tech_name,image_path,framework,cur_status)
values('Java','java.jpg','spring framework','active'),('Python','python.jpg','DJango framework','active'),('PHP','php.jpg','code ignite framework','active');



Tech Type:
-----------
CREATE TABLE tech_type(
tech_type_id		 INT NOT NULL AUTO_INCREMENT,  
type_name		 VARCHAR (255) DEFAULT NULL,
cur_status		 VARCHAR (255) DEFAULT NULL,
creator_stamp            DATETIME DEFAULT NULL, 
creator_user             VARCHAR (30) DEFAULT NULL,
 PRIMARY KEY (tech_type_id)
);

INSERT QUERY:
--------------
INSERT INTO Tech_Type(type_name,cur_status)
values('Full_Stack','active'),('Backend','active'),('Frontend','active');


Lab:
----
CREATE TABLE lab(
lab_id INT NOT NULL AUTO_INCREMENT,
lab_name VARCHAR (255) DEFAULT NULL,
location VARCHAR (255) DEFAULT NULL, 
address VARCHAR (255) DEFAULT NULL,
Status VARCHAR (255) DEFAULT NULL,
creator_stamp DATETIME DEFAULT NULL,
creator_user  VARCHAR (30) DEFAULT NULL,
 PRIMARY KEY (lab_id)
);

INSERT QUERY:
--------------

Lab ThreshHold:
---------------
CREATE TABLE lab_threshhold(
lab_threshhold_id INT NOT NULL AUTO_INCREMENT,  
lab_id INT,
lab_capacity VARCHAR (255) DEFAULT NULL,
lead_threshold VARCHAR (255) DEFAULT NULL,
ideation_engg_threshold	 VARCHAR (255) DEFAULT NULL,
buddy_engg_threshold  VARCHAR (255) DEFAULT NULL,
Status VARCHAR (255)  DEFAULT NULL,
creator_stamp DATETIME DEFAULT NULL,
creator_user VARCHAR (30) DEFAULT NULL,
PRIMARY KEY (lab_threshhold_id),
FOREIGN KEY (lab_id
) REFERENCES lab(lab_id)
);


Company Requirement:
--------------------
CREATE TABLE requirement(
requirement_id INT NOT NULL AUTO_INCREMENT,
company_id INT,
requested_month VARCHAR (30) DEFAULT NULL,
city VARCHAR (30) DEFAULT NULL,	
is_doc_verifrication BOOLEAN DEFAULT NULL, 
requirement_doc_path VARCHAR (30) DEFAULT NULL,
no_of_engg INT DEFAULT NULL,
tech_stack_id INT,
tech_type_id INT, 
maker_program_id 	INT,
lead_id INT, 
ideation_engg_id INT, 
buddy_engg_id INT, 
special_remark VARCHAR (255) DEFAULT NULL,	
Status VARCHAR (30) DEFAULT NULL,
creator_stamp DATETIME DEFAULT NULL, 
creator_user VARCHAR (30) DEFAULT NULL,
 PRIMARY KEY (requirement_id),
FOREIGN KEY (tech_stack_id
) REFERENCES tech_stack(tech_stack_id),
FOREIGN KEY (tech_type_id
) REFERENCES tech_type(tech_type_id),
FOREIGN KEY (maker_program_id
) REFERENCES maker_program(maker_program_id),
FOREIGN KEY (lead_id
) REFERENCES mentor(mentor_id),
FOREIGN KEY (ideation_engg_id
) REFERENCES mentor(mentor_id),
FOREIGN KEY (buddy_engg_id) REFERENCES mentor(mentor_id)
);



CREATE TABLE requirement(
requirement_id INT NOT NULL AUTO_INCREMENT,
company_id INT,
requested_month VARCHAR (30) DEFAULT NULL,
city VARCHAR (30) DEFAULT NULL,	
is_doc_verifrication BOOLEAN DEFAULT NULL, 
requirement_doc_path VARCHAR (30) DEFAULT NULL,
no_of_engg INT DEFAULT NULL,
tech_stack_id INT,
tech_type_id INT, 
maker_program_id 
INT,
lead_id INT, 
ideation_engg_id INT, 
buddy_engg_id INT, 
special_remark VARCHAR (255) DEFAULT NULL,	
Status VARCHAR (30) DEFAULT NULL,
creator_stamp DATETIME DEFAULT NULL, 
creator_user VARCHAR (30) DEFAULT NULL,
 PRIMARY KEY (requirement_id),
FOREIGN KEY (tech_stack_id
) REFERENCES tech_stack(tech_stack_id),
FOREIGN KEY (company_id
) REFERENCES company(company_id),
FOREIGN KEY (tech_type_id
) REFERENCES tech_type(tech_type_id),
FOREIGN KEY (maker_program_id
) REFERENCES maker_program(maker_program_id),
FOREIGN KEY (lead_id
) REFERENCES mentor(mentor_id),
FOREIGN KEY (ideation_engg_id
) REFERENCES mentor(mentor_id),
FOREIGN KEY (buddy_engg_id) REFERENCES mentor(mentor_id)
);

Alter Query:
----------------
ALTER TABLE requirement
ADD FOREIGN KEY (company_id) REFERENCES company(company_id);

INSERT QUERY:
--------------
INSERT INTO lmsapplication.requirement
(company_id,requested_month,city,is_doc_verifrication,no_of_engg,tech_stack_id,tech_type_id,maker_program_id,lead_id,ideation_engg_id,buddy_engg_id)
VALUES
(1,'APR','banglore',1,5,1,1,1,1,3,6),
(2,'SEP','Mangalore',1,3,2,2,2,2,4,5);


Candidate Stack Assignment:
---------------------------
CREATE TABLE candidate_stack(
candidate_stack_id INT NOT NULL AUTO_INCREMENT,  
requirement_id INT, 
candidate_id INT,	 
assign_date DATETIME NOT NULL, 
complete_date DATETIME NOT NULL,  
Status VARCHAR (30) DEFAULT NULL,
creator_stamp DATETIME DEFAULT NULL, 
creator_user VARCHAR (30) NOT NULL,
PRIMARY KEY (candidate_stack_id),
FOREIGN KEY (requirement_id) REFERENCES requirement(requirement_id),
FOREIGN KEY (candidate_id) REFERENCES fellowship_candidate(candidate_id)
);

INSERT QUERY:
--------------
INSERT INTO Candidate_Stack
(requirement_id,candidate_id,assign_date,complete_date)
VALUES
(1,1,'2019-12-20','2020-05-15'),
(1,2,'2019-11-11','2020-05-26');
INSERT INTO Candidate_Stack
(requirement_id,candidate_id,assign_date,complete_date)
VALUES
(2,3,'2019-12-20','2020-02-25')
INSERT INTO Candidate_Stack
(requirement_id,candidate_id,assign_date,complete_date)
VALUES
(1,6,'2019-12-20','2020-02-25')
INSERT INTO Candidate_Stack
(requirement_id,candidate_id,assign_date,complete_date)
VALUES
(1,5,'2019-12-20','2020-07-25')


STORED PROCEDURE:
------------------
DELIMITER //
CREATE PROCEDURE spFS(
	IN can_id INT
)
BEGIN
	SELECT * 
 	FROM fellowship_candidate
	WHERE candidate_id = can_id;
END //

DELIMITER ;

call spFS(1)