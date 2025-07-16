CREATE DATABASE Media_surveyDB;
-- NOTE:
-- Data for this project was collected via survey and is stored in 'augmented_survey_data.xlsx'.
-- The SQL schema represents the structure, while analysis was performed using Excel and imported data.

-- TABLE OF RESPONDENTS
CREATE TABLE respondents (
    id SERIAL PRIMARY KEY,          -- Auto-incrementing primary key
    name VARCHAR(100) NOT NULL,     -- Name of the respondent
    age INTEGER CHECK (age >= 18),  -- Age must be an integer and at least 18
    state VARCHAR(50) NOT NULL       -- State of the respondent
);


-- CONTENT PREFERENCES
CREATE TABLE ContentPreferences (
    id INT,
    Content VARCHAR(20),
    Device VARCHAR(20),
    StreamingPlatform VARCHAR(20),
    DiscoveryMethod VARCHAR(50),
	FOREIGN KEY (id) REFERENCES respondents(id)
);
-- TIME SPENT
CREATE TABLE TimeSpent (
    id INT,
    TimeSpentOnOTT VARCHAR(20),
    TimeSpentOnTV VARCHAR(20),
    FOREIGN KEY (id) REFERENCES Respondents(id)
);

-- AdPREFERENCES
CREATE TABLE AdPreferences (
    id INT,
    SkippingBehavior VARCHAR(30),
    AdDurationWatched VARCHAR(20),
    FOREIGN KEY (id) REFERENCES Respondents(id)
);

-- INSERTING DATA INTO RESPONDENTS

INSERT INTO Respondents (Name, Age, State) VALUES ('ram kumar', 24, 'bihar');
INSERT INTO Respondents (Name, Age, State) VALUES ('gaurav', 32, 'UP');
INSERT INTO Respondents (Name, Age, State) VALUES ('virendra yadav', 35, 'UP ');
INSERT INTO Respondents (Name, Age, State) VALUES ('prdeep', 25, 'himachal pradesh');
INSERT INTO Respondents (Name, Age, State) VALUES ('carmia', 32, 'assam');
INSERT INTO Respondents (Name, Age, State) VALUES ('MUSTUFa', 25, 'Karnatka');
INSERT INTO Respondents (Name, Age, State) VALUES ('devendra kumar', 27, 'UP');
INSERT INTO Respondents (Name, Age, State) VALUES ('mayank', 23, 'Madhya Pradesh');
INSERT INTO Respondents (Name, Age, State) VALUES ('rajesh', 27, 'telangana');
INSERT INTO Respondents (Name, Age, State) VALUES ('kethavath reddy', 61, 'andhra pradesh');
INSERT INTO Respondents (Name, Age, State) VALUES ('rajkhowa', 29, 'assam');
INSERT INTO Respondents (Name, Age, State) VALUES ('sanjay', 31, 'delhi');
INSERT INTO Respondents (Name, Age, State) VALUES ('vivek', 24, 'jharkhand');
INSERT INTO Respondents (Name, Age, State) VALUES ('amin shaikh', 29, 'maharashtra');
INSERT INTO Respondents (Name, Age, State) VALUES ('yaheya khan', 56, 'andhra pradesh ');
INSERT INTO Respondents (Name, Age, State) VALUES ('Pranav Das', 25, 'agartala ');
INSERT INTO Respondents (Name, Age, State) VALUES ('sailender kushwaha', 40, 'delhi');
INSERT INTO Respondents (Name, Age, State) VALUES ('vijay', 32, 'maharashtra');
INSERT INTO Respondents (Name, Age, State) VALUES ('ganeshwar mohantay', 30, 'odisha');
INSERT INTO Respondents (Name, Age, State) VALUES ('shanti rout', 29, 'odisha');
INSERT INTO Respondents (Name, Age, State) VALUES ('rajesh', 52, 'maharashtra');
INSERT INTO Respondents (Name, Age, State) VALUES ('sonu', 25, 'UP');
INSERT INTO Respondents (Name, Age, State) VALUES ('saroj', 30, 'bihar');
INSERT INTO Respondents (Name, Age, State) VALUES ('yogesh', 25, 'rajasthan');
INSERT INTO Respondents (Name, Age, State) VALUES ('Saurabh', 21, 'Gujarat');
INSERT INTO Respondents (Name, Age, State) VALUES ('Vishalbhai', 29, 'Gujarat');
INSERT INTO Respondents (Name, Age, State) VALUES ('jivan singh', 60, 'UP');
INSERT INTO Respondents (Name, Age, State) VALUES ('kunwarjeet', 35, 'bariely');
INSERT INTO Respondents (Name, Age, State) VALUES ('ida Philip', 23, 'Tamil Nadu');
INSERT INTO Respondents (Name, Age, State) VALUES ('bimal kumar', 68, 'jammu');
INSERT INTO Respondents (Name, Age, State) VALUES ('ragunath koli', 33, 'andhra Pradesh');
INSERT INTO Respondents (Name, Age, State) VALUES ('anupam kumar yadav', 36, 'rajasthan');
INSERT INTO Respondents (Name, Age, State) VALUES ('bhupender kumar', 27, 'Punjab');
INSERT INTO Respondents (Name, Age, State) VALUES ('rahul chouhan', 37, 'maharashtra');
INSERT INTO Respondents (Name, Age, State) VALUES ('akhter', 29, 'assam');
INSERT INTO Respondents (Name, Age, State) VALUES ('Dinesh Kumar', 44, 'Bihar');
INSERT INTO Respondents (Name, Age, State) VALUES ('guddu', 33, 'Haryana');
INSERT INTO Respondents (Name, Age, State) VALUES ('baliram sen', 25, 'Madhya Pradesh');
INSERT INTO Respondents (Name, Age, State) VALUES ('satish', 31, 'Gujarat');
INSERT INTO Respondents (Name, Age, State) VALUES ('dinesh parmar', 45, 'Gujarat');
INSERT INTO Respondents (Name, Age, State) VALUES ('Anil', 24, 'gujarat');
INSERT INTO Respondents (Name, Age, State) VALUES ('shivpal yadav', 30, 'Uttar Pradesh');
INSERT INTO Respondents (Name, Age, State) VALUES ('janealam', 24, 'Gujarat');
INSERT INTO Respondents (Name, Age, State) VALUES ('Narang', 29, 'delhi');
INSERT INTO Respondents (Name, Age, State) VALUES ('irshad', 22, 'Uttar Pradesh');
INSERT INTO Respondents (Name, Age, State) VALUES ('Sayyeda', 53, 'maharashtra');
INSERT INTO Respondents (Name, Age, State) VALUES ('rajiv bindal', 39, 'rajasthan');
INSERT INTO Respondents (Name, Age, State) VALUES ('Vicky', 42, 'punjab');
INSERT INTO Respondents (Name, Age, State) VALUES ('Dhaya', 40, 'tamil nadu');
INSERT INTO Respondents (Name, Age, State) VALUES ('paras', 25, 'Haryana');
INSERT INTO Respondents (Name, Age, State) VALUES ('kaviya', 41, 'andhra pradesh');
INSERT INTO Respondents (Name, Age, State) VALUES ('Dharamdas', 29, 'Madhya Pradesh');
INSERT INTO Respondents (Name, Age, State) VALUES ('narender kumar', 27, 'delhi');
INSERT INTO Respondents (Name, Age, State) VALUES ('irfan', 40, 'Madhya Pradesh');
INSERT INTO Respondents (Name, Age, State) VALUES ('yogesh', 32, 'maharashtra');
INSERT INTO Respondents (Name, Age, State) VALUES ('navin', 32, 'Uttar Pradesh');
INSERT INTO Respondents (Name, Age, State) VALUES ('Himanshu', 34, 'Uttar Pradesh');
INSERT INTO Respondents (Name, Age, State) VALUES ('srinivas', 38, 'Maharashtra');
INSERT INTO Respondents (Name, Age, State) VALUES ('prakash', 29, 'Uttar Pradesh');
INSERT INTO Respondents (Name, Age, State) VALUES ('tarun', 32, 'Karnataka');
INSERT INTO Respondents (Name, Age, State) VALUES ('anuj', 40, 'punjab');
INSERT INTO Respondents (Name, Age, State) VALUES ('javed', 37, 'chattisgarh');
INSERT INTO Respondents (Name, Age, State) VALUES ('sahil', 31, 'Gujarat');
INSERT INTO Respondents (Name, Age, State) VALUES ('nilesh', 34, 'Bihar');
INSERT INTO Respondents (Name, Age, State) VALUES ('jiendra', 38, 'Gujarat');
INSERT INTO Respondents (Name, Age, State) VALUES ('palash', 31, 'Uttar Pradesh');
INSERT INTO Respondents (Name, Age, State) VALUES ('abishek', 25, 'Delhi');
INSERT INTO Respondents (Name, Age, State) VALUES ('azam', 27, 'Madhya Pradesh');
INSERT INTO Respondents (Name, Age, State) VALUES ('kunal', 35, 'Uttar Pradesh');
INSERT INTO Respondents (Name, Age, State) VALUES ('bhagvan', 38, 'Bihar');
INSERT INTO Respondents (Name, Age, State) VALUES ('abdul', 32, 'Andhra Pradesh');
INSERT INTO Respondents (Name, Age, State) VALUES ('hardeep', 34, 'Gujarat');
INSERT INTO Respondents (Name, Age, State) VALUES ('sanjay', 30, 'Madhya Pradesh');
INSERT INTO Respondents (Name, Age, State) VALUES ('manoj', 37, 'Andhra Pradesh');
INSERT INTO Respondents (Name, Age, State) VALUES ('sridhar', 39, 'Uttar Pradesh');
INSERT INTO Respondents (Name, Age, State) VALUES ('Santosh', 29, 'Uttar Pradesh');
INSERT INTO Respondents (Name, Age, State) VALUES ('Bhanu', 39, 'Maharashtra');
INSERT INTO Respondents (Name, Age, State) VALUES ('Mohan', 31, 'Uttar Pradesh');
INSERT INTO Respondents (Name, Age, State) VALUES ('Ajeet', 31, 'Uttar Pradesh');
INSERT INTO Respondents (Name, Age, State) VALUES ('Sudhir', 53, 'Delhi');
INSERT INTO Respondents (Name, Age, State) VALUES ('Shankar', 24, 'Uttar Pradesh');
INSERT INTO Respondents (Name, Age, State) VALUES ('Pratik', 41, 'Maharashtra');
INSERT INTO Respondents (Name, Age, State) VALUES ('Sameer', 30, 'Uttar Pradesh');
INSERT INTO Respondents (Name, Age, State) VALUES ('Vikas', 22, 'Uttar Pradesh');
INSERT INTO Respondents (Name, Age, State) VALUES ('Gaurav', 37, 'Delhi');
INSERT INTO Respondents (Name, Age, State) VALUES ('Karan', 22, 'Uttar Pradesh');
INSERT INTO Respondents (Name, Age, State) VALUES ('Ankit', 54, 'Uttar Pradesh');
INSERT INTO Respondents (Name, Age, State) VALUES ('Jitendra', 18, 'Uttar Pradesh');
INSERT INTO Respondents (Name, Age, State) VALUES ('Mahesh', 32, 'Uttar Pradesh');
INSERT INTO Respondents (Name, Age, State) VALUES ('Raghav', 25, 'Uttar Pradesh');
INSERT INTO Respondents (Name, Age, State) VALUES ('Dhruv', 21, 'Uttar Pradesh');
INSERT INTO Respondents (Name, Age, State) VALUES ('Harsh', 32, 'Karnataka');
INSERT INTO Respondents (Name, Age, State) VALUES ('Yogesh', 37, 'Delhi');
INSERT INTO Respondents (Name, Age, State) VALUES ('Shashank', 37, 'Uttar Pradesh');
INSERT INTO Respondents (Name, Age, State) VALUES ('Dinesh', 57, 'Uttar Pradesh');
INSERT INTO Respondents (Name, Age, State) VALUES ('Pranav', 36, 'Uttar Pradesh');
INSERT INTO Respondents (Name, Age, State) VALUES ('Jayant', 33, 'Uttar Pradesh');
INSERT INTO Respondents (Name, Age, State) VALUES ('Raj', 30, 'Uttar Pradesh');
INSERT INTO Respondents (Name, Age, State) VALUES ('Piyush', 36, 'Uttar Pradesh');
INSERT INTO Respondents (Name, Age, State) VALUES ('Ishwar', 34, 'Uttar Pradesh');
INSERT INTO Respondents (Name, Age, State) VALUES ('Sanjay', 40, 'Maharashtra');
INSERT INTO Respondents (Name, Age, State) VALUES ('Kamlesh', 30, 'Uttar Pradesh');
INSERT INTO Respondents (Name, Age, State) VALUES ('Suresh', 25, 'Uttar Pradesh');
INSERT INTO Respondents (Name, Age, State) VALUES ('Aditya', 34, 'Gujarat');
INSERT INTO Respondents (Name, Age, State) VALUES ('Anuj', 30, 'Gujarat');
INSERT INTO Respondents (Name, Age, State) VALUES ('Ravi', 33, 'Uttar Pradesh');
INSERT INTO Respondents (Name, Age, State) VALUES ('Kartik', 37, 'Maharashtra');
INSERT INTO Respondents (Name, Age, State) VALUES ('Ishan', 60, 'Gujarat');
INSERT INTO Respondents (Name, Age, State) VALUES ('Nitin', 33, 'Uttar Pradesh');
INSERT INTO Respondents (Name, Age, State) VALUES ('Rajat', 44, 'Maharashtra');
INSERT INTO Respondents (Name, Age, State) VALUES ('Abhishek', 30, 'Uttar Pradesh');
INSERT INTO Respondents (Name, Age, State) VALUES ('Sahil', 18, 'Uttar Pradesh');
INSERT INTO Respondents (Name, Age, State) VALUES ('Lalit', 53, 'Uttar Pradesh');
INSERT INTO Respondents (Name, Age, State) VALUES ('Om', 35, 'Uttar Pradesh');
INSERT INTO Respondents (Name, Age, State) VALUES ('Varun', 43, 'Gujarat');
INSERT INTO Respondents (Name, Age, State) VALUES ('Akash', 19, 'Gujarat');
INSERT INTO Respondents (Name, Age, State) VALUES ('Amit', 38, 'Karnataka');
INSERT INTO Respondents (Name, Age, State) VALUES ('Dev', 31, 'Delhi');
INSERT INTO Respondents (Name, Age, State) VALUES ('Manish', 37, 'Gujarat');
INSERT INTO Respondents (Name, Age, State) VALUES ('Siddharth', 38, 'Uttar Pradesh');
INSERT INTO Respondents (Name, Age, State) VALUES ('Chandan', 40, 'Uttar Pradesh');
INSERT INTO Respondents (Name, Age, State) VALUES ('Laxman', 35, 'Uttar Pradesh');
INSERT INTO Respondents (Name, Age, State) VALUES ('Yash', 34, 'Gujarat');
INSERT INTO Respondents (Name, Age, State) VALUES ('Hardik', 51, 'Uttar Pradesh');
INSERT INTO Respondents (Name, Age, State) VALUES ('Vishal', 33, 'Uttar Pradesh');
INSERT INTO Respondents (Name, Age, State) VALUES ('Deepak', 31, 'Delhi');
INSERT INTO Respondents (Name, Age, State) VALUES ('Govind', 36, 'Gujarat');
INSERT INTO Respondents (Name, Age, State) VALUES ('Rakesh', 36, 'Gujarat');
INSERT INTO Respondents (Name, Age, State) VALUES ('Sohan', 39, 'Uttar Pradesh');
INSERT INTO Respondents (Name, Age, State) VALUES ('Hemant', 55, 'Karnataka');
INSERT INTO Respondents (Name, Age, State) VALUES ('Ashok', 30, 'Uttar Pradesh');
INSERT INTO Respondents (Name, Age, State) VALUES ('Udit', 35, 'Uttar Pradesh');
INSERT INTO Respondents (Name, Age, State) VALUES ('Rohit', 35, 'Gujarat');
INSERT INTO Respondents (Name, Age, State) VALUES ('Naveen', 30, 'Karnataka');
INSERT INTO Respondents (Name, Age, State) VALUES ('Sumit', 27, 'Uttar Pradesh');
INSERT INTO Respondents (Name, Age, State) VALUES ('Aarav', 35, 'Gujarat');
INSERT INTO Respondents (Name, Age, State) VALUES ('Suraj', 29, 'Gujarat');
INSERT INTO Respondents (Name, Age, State) VALUES ('Rahul', 29, 'Uttar Pradesh');
INSERT INTO Respondents (Name, Age, State) VALUES ('Bhavesh', 26, 'Maharashtra');
INSERT INTO Respondents (Name, Age, State) VALUES ('Vinay', 38, 'Uttar Pradesh');
INSERT INTO Respondents (Name, Age, State) VALUES ('Balram', 20, 'Gujarat');
INSERT INTO Respondents (Name, Age, State) VALUES ('Girish', 34, 'Uttar Pradesh');
INSERT INTO Respondents (Name, Age, State) VALUES ('Arjun', 37, 'Karnataka');
INSERT INTO Respondents (Name, Age, State) VALUES ('Jai', 58, 'Gujarat');
INSERT INTO Respondents (Name, Age, State) VALUES ('Chandresh', 23, 'Uttar Pradesh');
INSERT INTO Respondents (Name, Age, State) VALUES ('Tarun', 38, 'Delhi');
INSERT INTO Respondents (Name, Age, State) VALUES ('Satish', 22, 'Uttar Pradesh');
INSERT INTO Respondents (Name, Age, State) VALUES ('Aman', 34, 'Gujarat');
INSERT INTO Respondents (Name, Age, State) VALUES ('Vikram', 31, 'Uttar Pradesh');
INSERT INTO Respondents (Name, Age, State) VALUES ('Mukesh', 39, 'Uttar Pradesh');

--

