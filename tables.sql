create table BOOK(Book_Id int,Title varchar(20),Language_ID int,MRP int,Publisher_Id int,Publisher_Date date,Volume int,Status varchar(25),foreign key(Language_ID) REFERENCES LANGUAGE(Language_Id),foreign key(Publisher_Id) REFERENCES PUBLISHER(Publisher_Id),primary key(Book_Id));
CREATE TABLE AUTHOR(Author_ID INT,NAME VARCHAR(25),Email VARCHAR(25),status VARCHAR(25));
create table BOOk_AUTHOR(Book_ID int,Author_ID int,primary key(Book_ID,Author_ID));
create table PUBLISHER(Publisher_Id int,Name varchar(25),Address varchar(25),primary key(Publisher_Id));
create table MEMBER(MEMBER_Id int,Name varchar(25),Branch_Code varchar(25),Roll_Number int,Phone_Number int,Email_Id varchar(25),Date_Of_Join date,Status varchar(25),primary key(MEMBER_Id));
create table Book_Issue(Isuue_ID int,Date_Of_Issue date,Book_ID int,Member_id int,Expected_date_Of_Return date,status varchar(25),foreign key(Book_ID) REFERENCES Book(Book_ID),foreign key(Member_id) REFERENCES MEMBER(Member_id),primary key(Isuue_ID));
create table Book_Retern(Isuue_ID int,Actual_date_Of_Return date,Late_Days date,Late_Fees int,primary key(Isuue_ID),foreign key(Isuue_ID) REFERENCES Book_Issue(Isuue_ID));
CREATE TABLE LANGUAGE(Language_Id INT,NAME VARCHAR(25),PRIMARY KEY(Language_Id));
CREATE TABLE LATE_FEE_RULE(Fromdays INT,Todate INT,Amount INT,PRIMARY KEY(Fromdays,Todate,Amount));
