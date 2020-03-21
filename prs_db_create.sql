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
    isAdmin			tinyint			not null,
    constraint uname unique (Username)
	);
      
      -- for tinyint values, 0 = false or no access and 1 = access -- 
      -- constraint act_mov unique (actorID, movieID)*/
      
create table Vendor (
    ID						int					primary key auto_increment,
    Code					varchar(10)			not null,
    Name					varchar(255)		not null,
    Address					varchar(255)		not null,
    City					varchar(255)		not null,
    State					varchar(2)			not null,
    Zip						varchar(5)			not null,
    PhoneNumber				varchar(12)			not null,
    Email					varchar(100)		not null,
    constraint vcode unique (Code)
    );
    
        
    
create table Request (
 
	ID						int					primary key auto_increment,
	UserID					int					not null,
	Description				varchar(100)		not null,
	Justification			varchar(255)		not null,
	DateNeeded				date				not null,
	DeliveryMode			varchar(25)			not null,
	Status					varchar(20)			not null,
    Total					decimal(10,2)		not null,
	SubmittedDate			datetime			not null,
	ReasonForRejection		varchar(100)	   	null,
    foreign key (UserID) references User(ID)
    );
    
create table Product (
    ID						int					primary key auto_increment,
    VendorID				int					not null,
    PartNumber				varchar(50)			not null,
    Name					varchar(150)		not null,
    Price					decimal(10,2)		not null,
    Unit					varchar(255)		null,
    PhotoPath				varchar(255)		null,
    foreign key (VendorID) references Vendor(ID),
    constraint vendor_part unique (VendorID, PartNumber)
    );
    
    
    
    /*	foreign key (actorID) references actor(ID),
	foreign key (movieID) references movie(ID),
    constraint act_mov unique (actorID, movieID)*/
    
create table LineItem (
    ID						int					primary key auto_increment,
	RequestID				int					not null,
    ProductID				int					not null,
	Quanity					int					not null,
    foreign key (ProductID) references Product(ID),
    foreign key (RequestID) references Request(ID),
    constraint req_pdt unique (RequestID, ProductID)
    );
    
 -- Inserts for User Table -- 
 	insert into User(ID, UserName, Password, FirstName, LastName, PhoneNumber, Email, isReviewer, isAdmin)
		values	(1, 'oconnesj', 'Alamo#20', 'Sam', 'O''Connell', '513-426-0411', 'samuel.oconnell1493@gmail.com', 1,1 );
	insert into User(ID, UserName, Password, FirstName, LastName, PhoneNumber, Email, isReviewer, isAdmin)
		values	(2,'masilibr', 'Remember4', 'Blake', 'Maislin', '513-444-4444', 'Blake.Maislin@hotmail.com' , 1,0);
	insert into	User(ID, UserName, Password, FirstName, LastName, PhoneNumber, Email, isReviewer, isAdmin)
		values	(3,'isaacsd', 'Hammertime', 'Darryl', 'Isaacs', '800-800-8888', 'Thehammerlawyer@law.com' ,0,1);
        
-- Vendor table inserts  --
/* Code is First two letters of company name + firs 3 of street + first 5 of city  name ex 
Oakley cincinnati kroger  is krmarcinci */
	insert into Vendor (ID, Code, Name, Address, City, State, Zip, PhoneNumber, Email)
		values	(1, 'krmarcinci', 'Kroger', '4613 Marbug Ave', 'Cincinnati', 'OH', '45209', '513-782-5100', 'customerservice@kroger.com' );
	insert into Vendor (ID, Code, Name, Address, City, State, Zip, PhoneNumber, Email)
		values	(2, 'grericinci', 'Graeter''s Ice Cream', '2704 Erie Ave', 'Cincinnati', 'OH', '45209', '513-321-6221', 'iscreamforicecream@graeters.com' );	
	insert into Vendor (ID, Code, Name, Address, City, State, Zip, PhoneNumber, Email)
		values	(3, 'mamadcinci', 'Mad Tree Brewing', '3301 Madison Rd', 'Cincinnati', 'OH', '45209', '513-836-8733', 'owner@madtreebrewing.com');
	insert into Vendor (ID, Code, Name, Address, City, State, Zip, PhoneNumber, Email)
		values	(4, 'skcarnewpo', 'Skyline Chili', '35 Carothers Rd', 'Newport', 'KY', '45209', '859-431-1001', 'makeitathreeway@gmail.com');