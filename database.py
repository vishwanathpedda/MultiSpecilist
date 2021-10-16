import MySQLdb
import sys

# *******************************************************************************************************
# Block of code will read date from file and Preprocess as per database requirements
# Which converts from list to Tuples of Tuples which is required to store data to tables in database.


'''
							Test cases for this Block of code

	1. Check for the empty file.
	2. Check for the output format



'''
lis=[]
data_by_lines = []
with open(sys.argv[1],'r') as f:
	data = f.readlines()
#print data
for i in data:
	d = i.split("|")
	lis.append(d)

pre_prcs_data = []
for d in lis:
	pre_prcs_data.append(d[2:])

res = tuple(tuple(s) for s in pre_prcs_data)
# ---------------------------------------------------------------------------------------------------------



#************************************ make a connection to the database ***********************************

'''
	1.	Check for DB connection.
	2.	Check for the tables.
	

'''


db_connection = MySQLdb.connect("localhost","root","password","Test_Db")
cursor = db_connection.cursor()

#drop table is exists
cursor.execute("DROP TABLE IF EXISTS Patients")
# ----------------------------------------------------------------------------------------------------------




#************************************* create a table for Patients ****************************************

Patients_tbl = ''' CREATE TABLE Patients(
					Customer_Name varchar(255) NOT NULL,
					Customer_ID varchar(18) NOT NULL,
					Customer_Open_Date Date NOT NULL,
					Last_Consulted_Date Date,
					Vaccination_Type char(5),
					Doctor_Consulted char(255),
					State char(5),
					Country char(5),
					Date_of_Birth Date,
					Active_Customer char(1)	

					)'''

cursor.execute(Patients_tbl)
# -----------------------------------------------------------------------------------------------------------





# ************************************ Inserting values to table from file **********************************
insert_stmt = '''INSERT INTO Patients (
					Customer_Name,
					Customer_ID,
					Customer_Open_Date,
					Last_Consulted_Date,
					Vaccination_Type,
					Doctor_Consulted,
					State,
					Country,
					Date_of_Birth,
					Active_Customer ) 
					VALUES (%s,%s,%s,%s,%s,%s,%s,%s,%s,%s)'''

if cursor.executemany(insert_stmt,res):
	print "Uploaded to table"
else:
	print "Failed to upload to database"

#------------------------------------------------------------------------------------------------------------




# ******************** Fetching the Total Number of countries from the patient tables ***********************

cou = "SELECT Country from Patients"
cursor.execute(cou)
fected_data = cursor.fetchall()
#print fected_data
				

#------------------------------------------------------------------------------------------------------------



#********************** Creating a Table for Mulitple Countries ***************************************************

f = ([ele for tupl in fected_data for ele in tupl])

e = "INDIA"
state1 = "CREATE TABLE IF NOT EXISTS "
state2 = '''(Customer_Name varchar(255) NOT NULL,
					Customer_ID varchar(18) NOT NULL,
					Customer_Open_Date Date NOT NULL,
					Last_Consulted_Date Date,
					Vaccination_Type char(5),
					Doctor_Consulted char(255),
					State char(5),
					Date_of_Birth Date,
					Active_Customer char(1))'''

#print state1+e+state2
for n in f:
	create_statement = state1+n+state2
	#print create_statement
	cursor.execute(create_statement)
#-----------------------------------------------------------------------------------------------------------------



insert_stmt_Cnty3 = '''SELECT  
					Customer_Name,
					Customer_ID,
					Customer_Open_Date,
					Last_Consulted_Date,
					Vaccination_Type,
					Doctor_Consulted,
					State,
					Date_of_Birth,
					Active_Customer from Patients WHERE Country="'''


insert_stmt1 = "INSERT INTO "
insert_stmt2='''(
					Customer_Name,
					Customer_ID,
					Customer_Open_Date,
					Last_Consulted_Date,
					Vaccination_Type,
					Doctor_Consulted,
					State,
					Date_of_Birth,
					Active_Customer ) 
					VALUES (%s,%s,%s,%s,%s,%s,%s,%s,%s)'''

for v in f:
	print v
	st =  insert_stmt_Cnty3+v+'"'
	#print st
	cursor.execute(st)
	h = cursor.fetchall()
	print h
	query = insert_stmt1+v+insert_stmt2
	print query
	cursor.executemany(query,h)
	
db_connection.commit()







