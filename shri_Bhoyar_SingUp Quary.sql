use RegistrationDetails;

create table SignUpForm(
id int primary key identity,
[Registration_No] int ,
[Registration_DateTime] nvarchar(max),
First_Name varchar(50),
Last_Name varchar(50),
DateOfBirth date,
Gender varchar(50),
Contact_no int,
[Address] nvarchar(max),
City varchar(50),
[State] varchar(50),
Education varchar(50) ,
ProfileType varchar(50),
Experiance int,
Current_Salary int,
InterviewStatus varchar(50),
Note nvarchar(50),
)

--Insert Row 

create proc sp_Insert
@Registration_No int,
@Registration_DateTime nvarchar,
@First_Name varchar,
@Last_Name varchar,
@DateOfBirth date,
@Gender varchar,
@Contact_no int,
@Address nvarchar,
@City varchar,
@State varchar,
@Education varchar,
@ProfileType varchar,
@Experiance int,
@Current_Salary int,
@InterviewStatus varchar,
@Note nvarchar
as
begin 
insert into SignUpForm values(@Registration_No,@Registration_DateTime,@First_Name,@Last_Name,@DateOfBirth,@Gender,@Contact_no,@Address,@City,@State,@Education,@ProfileType,@Experiance,@Current_Salary,@InterviewStatus,@Note);
end




--select all table Data

create proc sp_SelectAll
as
begin 
select * from SignUpForm
end





--select perticulor row 

create proc sp_Select_Row
@id int
as
begin 
select * from SignUpForm where id=@id;
end





--delete specific row 

create proc sp_Detete
@id int
as
begin 
delete from SignUpForm where id=@id;
end



--update Row 

create proc sp_Update
@Registration_No int,
@Registration_DateTime nvarchar,
@First_Name varchar,
@Last_Name varchar,
@DateOfBirth date,
@Gender varchar,
@Contact_no int,
@Address nvarchar,
@City varchar,
@State varchar,
@Education varchar,
@ProfileType varchar,
@Experiance int,
@Current_Salary int,
@InterviewStatus varchar,
@Note nvarchar
as
begin 
update SignUpForm set Registration_No=@Registration_No,Registration_DateTime=@Registration_DateTime,First_Name=@First_Name,Last_Name=@Last_Name,DateOfBirth=@DateOfBirth,Gender=@Gender,Contact_no=@Contact_no,[Address]=@Address,City=@City,[State]=@State,Education=@Education,ProfileType=@ProfileType,Experiance=@Experiance,Current_Salary=@Current_Salary,InterviewStatus=@InterviewStatus,Note=@Note;
end








