
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

select * from AddressBook;

