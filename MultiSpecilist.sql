
******** Table for Patients ****************

create table Patients (
					
			Customer_Name varchar(255) NOT NULL,
			Customer_ID varchar(18) NOT NULL,
			Customer_Open_Date Date NOT NULL,
			Last_Consulted_Date Date,
			Vaccination_Type char(5),
			Doctor_Consulted char(255),
			State char(5),
			Country char(5),
			Post_Code integer(5),
			Date_of_Birth date,
			Active_Customer char(1)



);

********** Table for USA *********************

CREATE TABLE USA (

			Customer_Name varchar(255) NOT NULL,
			Customer_ID varchar(18) NOT NULL,
			Customer_Open_Date Date NOT NULL,
			Last_Consulted_Date Date,
			Vaccination_Type char(5),
			Doctor_Consulted char(255),
			State char(5),
			Post_Code integer(5),
			Date_of_Birth date,
			Active_Customer char(1)


);

********** Table For India ********************


CREATE TABLE India (

			Customer_Name varchar(255) NOT NULL,
			Customer_ID varchar(18) NOT NULL,
			Customer_Open_Date Date NOT NULL,
			Last_Consulted_Date Date,
			Vaccination_Type char(5),
			Doctor_Consulted char(255),
			State char(5),
			Post_Code integer(5),
			Date_of_Birth date,
			Active_Customer char(1)


);

********** Table for PHIL ***********************

CREATE TABLE PHIL (

			Customer_Name varchar(255) NOT NULL,
			Customer_ID varchar(18) NOT NULL,
			Customer_Open_Date Date NOT NULL,
			Last_Consulted_Date Date,
			Vaccination_Type char(5),
			Doctor_Consulted char(255),
			State char(5),
			Post_Code integer(5),
			Date_of_Birth date,
			Active_Customer char(1)


);

******** Table for NYC *********************

CREATE TABLE NYC (

			Customer_Name varchar(255) NOT NULL,
			Customer_ID varchar(18) NOT NULL,
			Customer_Open_Date Date NOT NULL,
			Last_Consulted_Date Date,
			Vaccination_Type char(5),
			Doctor_Consulted char(255),
			State char(5),
			Post_Code integer(5),
			Date_of_Birth date,
			Active_Customer char(1)


);

******** Table For AU ********************

CREATE TABLE AU (

			Customer_Name varchar(255) NOT NULL,
			Customer_ID varchar(18) NOT NULL,
			Customer_Open_Date Date NOT NULL,
			Last_Consulted_Date Date,
			Vaccination_Type char(5),
			Doctor_Consulted char(255),
			State char(5),
			Post_Code integer(5),
			Date_of_Birth date,
			Active_Customer char(1)


);


*************** Inserting data into to the tables ***************

insert into Patients (
			Customer_Name,
			Customer_ID, 
			Customer_Open_Date, 
			Last_Consulted_Date,
			Vaccination_Type,
			Doctor_Consulted,
			State,
			Country,
			Post_Code,
			Date_of_Birth,
			Active_Customer ) 
			
		values  (

			'Alex','123457','2010/10,12','2010/10/13','MVD','Paul','SA','USA',523109,'1997/08/15','A');



insert into Patients (
			Customer_Name,
			Customer_ID, 
			Customer_Open_Date, 
			Last_Consulted_Date,
			Vaccination_Type,
			Doctor_Consulted,
			State,
			Country,
			Post_Code,
			Date_of_Birth,
			Active_Customer ) 
			
		values  (

			'Alex','123457','2010/10,12','2010/10/13','MVD','Paul','SA','USA',523109,'1997/08/15','A');




insert into Patients (
			Customer_Name,
			Customer_ID, 
			Customer_Open_Date, 
			Last_Consulted_Date,
			Vaccination_Type,
			Doctor_Consulted,
			State,
			Country,
			Post_Code,
			Date_of_Birth,
			Active_Customer ) 
			
		values  (

			'John','123458','2010/10,12','2010/10/13','MVD','Paul','TN','IND',523105,'1998/04/08','A');


insert into Patients (
			Customer_Name,
			Customer_ID, 
			Customer_Open_Date, 
			Last_Consulted_Date,
			Vaccination_Type,
			Doctor_Consulted,
			State,
			Country,
			Post_Code,
			Date_of_Birth,
			Active_Customer ) 
			
		values  (

			'Mathew','123459','2010/10,12','2010/10/13','MVD','Paul','WAS','PHIL',523102,'1995/02/17','A');


insert into Patients (
			Customer_Name,
			Customer_ID, 
			Customer_Open_Date, 
			Last_Consulted_Date,
			Vaccination_Type,
			Doctor_Consulted,
			State,
			Country,
			Post_Code,
			Date_of_Birth,
			Active_Customer ) 
			
		values  (

			'Matt','12345','2010/10,12','2010/10/13','MVD','Paul','BOS','NYC',523106,'1992/05/23','A');


insert into Patients (
			Customer_Name,
			Customer_ID, 
			Customer_Open_Date, 
			Last_Consulted_Date,
			Vaccination_Type,
			Doctor_Consulted,
			State,
			Country,
			Post_Code,
			Date_of_Birth,
			Active_Customer ) 
			
		values  (

			'Jacob','1256','2010/10,12','2010/10/13','MVD','Paul','VIC','AU',523123,'1923/04/02','A');


************ Coping the Patients data to their Respective Countries *************


insert USA

select 
	Customer_Name,
	Customer_ID, 
	Customer_Open_Date,
	Last_Consulted_Date,
	Vaccination_Type,
	Doctor_Consulted,
	State,
	Post_Code,
	Date_of_Birth,
	Active_Customer
from 
	Patients
where
	Country = 'USA';
