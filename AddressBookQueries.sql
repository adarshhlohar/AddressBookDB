
-- use case 1 Ability to create a address book service db
create database AddressBookDB;


use AddressBookDB;

-- use case 2 Ability to create a address book table with first and last name address city state zip phone nymber and email
create table AddressBook(
id int auto_increment primary key,
firstName varchar(50) not null,
lastName varchar(50) not null,
address varchar(55),
city varchar(50),
state varchar(50),
zip long,
phoneNumber long,
email varchar(55) unique not null
);


-- use case 3 Ability to insert new contacts to address book
insert into AddressBook
(firstName,lastName,address,city,state,zip,phoneNumber,email)values
("Shri","Lohar","Benglore","Benglore","Karnataka",746453,8209764747,"Shri@gmail.com"),
("Sagar","Sutar","Benglore","Benglore","Karnataka",857474,983838383,"Sagar@gmail.com"),
("Adarsh","Lohar","pune","pune","Maharashtra",413606,9356986567,"adarsh@gmail.com"),
("Sanket","Garde","Mumbai","Mumbai","Maharashtra",647365,9876778544,"sanket@gmail"),
("Sanskar","Soni","Chitodgad","chittodgarh","Rajasthan",312001,9887279510,"Sanskarsoni89@gmail.com");

-- use case 4 Ability to edit existing contact person using their name 
update AddressBook set phoneNumber = 9689818708
where firstName = "Adarsh" and lastName = "Lohar";

-- Use Case 5 Ability to delete a person using person name
delete from AddressBook where firstName = "Adarsh" And lastName = "Lohar";

-- Use case 6 Ability to find peroson by city And State
select * from AddressBook where city = "Mumbai";

--  Use Case 7 finding the count of city and state
SELECT city, state, COUNT(*) as NumberOfContacts
FROM AddressBook
GROUP BY city, state;


-- UC-8 printing the value of acsending order of name
select * from AddressBook  order by firstName asc;





-- Use Case 09 identify AddressBook By its name and type
alter table AddressBook add type varchar(40) not null;

update AddressBook set type="Friend" where firstName = "Sanket";
update AddressBook set type="Friend" where firstName = "Sanskar";
update AddressBook set type="Family" where firstName = "Shri";
update AddressBook set type="Family" where firstName = "Sagar";
update AddressBook set type="Friend" where firstName = "Adarsh";

-- Use case 10 find the number of friends and family count in address Book
select type, count(*) as typeCount from AddressBook Group BY type;


-- Use case 12  Refactoring the code UC-10 is not working
select TypeTable.type, count(*) as typeCount From AddressBook JOIN TypeTable ON AddressBook.id = TypeTable.Tid  group by TypeTable.type;

-- Adding a person both family and friend
insert into AddressBook(firstName,lastName,address,city,state,zip,phoneNumber,email,type)
values("Mahesh","Bhusane","Pune","Pune","Maharashtra",413606,7498234545,"mahesh@gmail.com","Friend"),
("Mahesh","Bhusane","Pune","Pune","Maharashtra",413606,7498234545,"mahesh1@gmail.com","Family");



create table TypeTable(
	Tid int,
    type varchar(255) not null,
    foreign key(Tid) references AddressBook(id)
);

ALTER TABLE AddressBook
DROP COLUMN type;

insert into TypeTable(Tid,type) values(5,"Friend"),(6,"Friend"),(7,"Friend"),(8,"Family"),(9,"Family"),(10,"Friend"),(11,"Family");

SELECT TypeTable.type,AddressBook.firstName 
FROM AddressBook 
JOIN TypeTable ON AddressBook.id = TypeTable.Tid 
WHERE TypeTable.type = 'Family';


select * from TypeTable;
select * from AddressBook;