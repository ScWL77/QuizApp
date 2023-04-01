create database if not exists clicker;

use clicker;

drop table if exists databaseCodes;

create table databaseCodes(
	id int NOT NULL AUTO_INCREMENT,
	code int,
	PRIMARY KEY(id)
);

drop table if exists duration;

create table duration(
	ID int NOT NULL AUTO_INCREMENT,
	status varchar(50),
	PRIMARY KEY(ID)
);

drop table if exists mcq;

create table mcq(
	choice varchar(200),
	choiceID int,
	optionID int  
);

insert into mcq (choice,choiceID,optionID) values ("Dark Chocolate",2,1);
insert into mcq (choice,choiceID,optionID) values ("Peanut Butter",2,2);
insert into mcq (choice,choiceID,optionID) values ("Canned Tuna",2,3);
insert into mcq (choice,choiceID,optionID) values ("Honey",2,4);
insert into mcq (choice,choiceID,optionID) values ("Eiffel Towel",3,1);
insert into mcq (choice,choiceID,optionID) values ("Statue of Liberty",3,2);
insert into mcq (choice,choiceID,optionID) values ("Great Wall of China",3,3);
insert into mcq (choice,choiceID,optionID) values ("Colosseum",3,4);
insert into mcq (choice,choiceID,optionID) values ("Brain",4,1);
insert into mcq (choice,choiceID,optionID) values ("Liver",4,2);
insert into mcq (choice,choiceID,optionID) values ("Skin",4,3);
insert into mcq (choice,choiceID,optionID) values ("Heart",4,4);
insert into mcq (choice,choiceID,optionID) values ("Silver",5,1);
insert into mcq (choice,choiceID,optionID) values ("Magnesium",5,2);
insert into mcq (choice,choiceID,optionID) values ("Salt",5,3);
insert into mcq (choice,choiceID,optionID) values ("Gold",5,4);
insert into mcq (choice,choiceID,optionID) values ("100",6,1);
insert into mcq (choice,choiceID,optionID) values ("200",6,2);
insert into mcq (choice,choiceID,optionID) values ("400",6,3);
insert into mcq (choice,choiceID,optionID) values ("500",6,4);
insert into mcq (choice,choiceID,optionID) values ("Scotland",7,1);
insert into mcq (choice,choiceID,optionID) values ("Denmark",7,2);
insert into mcq (choice,choiceID,optionID) values ("New Zealand",7,3);
insert into mcq (choice,choiceID,optionID) values ("France",7,4);
insert into mcq (choice,choiceID,optionID) values ("Gorillas",8,1);
insert into mcq (choice,choiceID,optionID) values ("Monkeys",8,2);
insert into mcq (choice,choiceID,optionID) values ("Bonobos",8,3);
insert into mcq (choice,choiceID,optionID) values ("Homo Sapiens",8,4);

drop table if exists questions;

create table questions(
	question varchar(200),
	qnID int,
	correctAns int,
	PRIMARY KEY (qnID);
);

insert into questions (question,qnID,correctAns) values ("Q2. What is the only food that cannot go bad?",2,4);
insert into questions (question,qnID,correctAns) values ("Q3. What is the most visited tourist attraction in the world?",3,1);
insert into questions (question,qnID,correctAns) values ("Q4. What's the heaviest organ in the body?",4,2);
insert into questions (question,qnID,correctAns) values ("Q5. What element does the chemical symbol Au stand for?",5,4);
insert into questions (question,qnID,correctAns) values ("Q6. How many seeds are located on the outside of a strawberry?",6,2);
insert into questions (question,qnID,correctAns) values ("Q7. Which country's national animal is a unicorn?",7,1);
insert into questions (question,qnID,correctAns) values ("Q8. What animal is the closest living relative of a human?",8,3);

drop table if exists responses;

create table responses(
	questionNo int,
	choice varchar(1),
);

drop table if exists trackqn;

create table trackqn(
	ID int NOT NULL AUTO_INCREMENT,
	qnNumber int,
);

drop table if exists users;

create table questions(
	userID int NOT NULL AUTO_INCREMENT,
	fullname varchar(100),
	username varchar(50);
	email varchar(100);
	password varchar(50);
	PRIMARY KEY (userID);
);
