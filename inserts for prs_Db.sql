/* insert into actor (ID, firstName,	lastName, gender, birthDate)
	values(1, 'Keanu', 'Reeves', 'Male', '1964-09-02'); */



/* 

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

 3 users..  and admin, a reviewer and a non reviewer/admin.
3:28
2.  3 or 4 vendors...   i.e.  BB-101 Best Buy - Mason address?, Amazon, Apple...

3:29
3.  10 or 11 products at least.. make them meaningful


      
*/

/*


	Blake R. Maislin
	Darryl Isaacs “The Hammer”
*/




--  User table inserts --
	insert into User(ID, UserName, Password, FirstName, LastName, PhoneNumber, Email, isReviewer, isAdmin)
		values	(1, 'oconnesj', 'Alamo#20', 'Sam', 'O''Connell', '(513)426-0411', 'samuel.oconnell1493@gmail.com', 1,1 );
	insert into User(ID, UserName, Password, FirstName, LastName, PhoneNumber, Email, isReviewer, isAdmin)
		values	(2,'masilibr', 'Remember4', 'Blake', 'Maislin', '513444-4444',  'Blake.Maislin@hotmail.com' , 1,0);
	insert into	User(ID, UserName, Password, FirstName, LastName, PhoneNumber, Email, isReviewer, isAdmin)
	/*
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
    
  */      


-- Vendor table inserts  --
/* Code is First two letters of company name + firs 3 of street + first 5 of city  name ex 
Oakley cincinnati kroger  is krmarcinci */
	insert into Vendor(ID, Code, Name, Address, City, State, Zip, PhoneNumber, Email)
		values	(1, 'krmarcinci', 'Kroger', '4613 Marbug Ave', 'Cincinnati', 'OH', 'customerservice@kroger.com' )
	insert into Vendor(ID, Code, Name, Address, City, State, Zip, PhoneNumber, Email)
		values	(2, 'krpaxcinci', 'Kroger', '3760 Paxton Ave', 'Cincinnati', 'OH', 'customerservice@kroger.com' )		
