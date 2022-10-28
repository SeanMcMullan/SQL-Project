CREATE TABLE HORSE (
horse_name varchar(50) not null, 
age int,
colour varchar(25),
prize_money numeric(15,2),
owner_name varchar(100),
trainer_name varchar(100),
CONSTRAINT PK_horse PRIMARY KEY (horse_name)
);
