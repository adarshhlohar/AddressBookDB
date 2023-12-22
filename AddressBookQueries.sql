create database AddressBookDB;


use AddressBookDB;

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

insert into AddressBook
(firstName,lastName,address,city,state,zip,phoneNumber,email)values
("Adarsh","Lohar","pune","pune","Maharashtra",413606,9356986567,"adarsh@gmail.com"),
("Sanket","Garde","Mumbai","Mumbai","Maharashtra",647365,9876778544,"sanket@gmail"),
("Sanskar","Soni","Chitodgad","chittodgarh","Rajasthan",312001,9887279510,"Sanskarsoni89@gmail.com");


select * from AddressBook;

