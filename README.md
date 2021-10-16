# MultiSpecilist Hospital.

This Project contains Three main Files.
1. Database.py = This the main files which creates tables in the database manually, if table not esixts in the database.
2. MultiSpecilist.sql = This is the SQL files, where it consists of SQL queris, which is used to create a tables in the database manually.
3. File_Reading.py =  Python script, which reads txt file and convert as preprocessed data as input for the other model.\
4. Sample_data.txt = sample input data for the Python module.

# How to run the Script.( Need Python version 2.7)
 
 open the terminal and type the following.
 
 " python Database.py sample_data.txt -W Ignore " Note: _W is used for ignoring if any warnings.
 
 
 # Main File which integrates all the three modules.
 
  Database.py is the main file, which reads input data from the text file, which is preprocessed as input for the 2nd module.
  In the 2nd module which connects to database and creats a tables in the database called "Test_Db".
  in the 3rd modue which creats a table based on the 2nd module outcome.
  

