-- Drop and Create the Database, DDL
drop database if exists prs_db;
create database prs_db;
use prs_db;


-- DDL - Create Tables

create table User (
	ID 				int 			primary key auto_increment,
	UserName		varchar(20) 	not null,
	Password		varchar(10)		not null,
	FirstName		varchar(20) 	not null,		
	LastName		varchar(20) 	not null,
    PhoneNumber		varchar(12)     not null,
    Email			varchar(75)		not null,
    isReviewer		tinyint			not null,
    isAdmin			tinyint			not null
	);