create database AddressBookDB;



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
