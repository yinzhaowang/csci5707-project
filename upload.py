import pymysql
import os
import csv
import glob

#################### open and upload
path = r"C:\Users\Onionslime\Desktop\ms 3rd\csci 5707\project\python data access\venv\data"




#list_of_files = os.listdir(path)
list_of_files = glob.glob(path + "/*.csv")

connection = pymysql.connect(host='localhost',
                             user='root',
                             password='',
                             database='flight',
                             charset='utf8mb4',
                             cursorclass=pymysql.cursors.DictCursor)
cursor = connection.cursor()


for f_name in list_of_files:
    f = open(f_name)
    file_temp = csv.reader(f)
    create_query = f"CREATE TABLE IF NOT EXISTS `flight`.`{f_name[-12:-4]}` (`Carrier Code` varchar(15), `Date (MM/DD/YYYY)` varchar(20), `Flight Number` varchar(14), `Tail Number` varchar(13), `Destination Airport` varchar(20), `Scheduled departure time` varchar(25)) " \
                   "DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci"
    cursor.execute(create_query)
    #print(f_name[-12:-4])
    for row in file_temp:
        upload_query = f"INSERT INTO `flight`.`{f_name[-12:-4]}` (`Carrier Code`, `Date (MM/DD/YYYY)`, `Flight Number`, `Tail Number`, `Destination Airport`, `Scheduled departure time`) VALUES ('{row[0]}', '{row[1]}', '{row[2]}', '{row[3]}', '{row[4]}', '{row[5]}')"
        cursor.execute(upload_query)



connection.commit()
connection.close()

#########################


#create_table = "INSERT INTO `flight`.`ABQ_A_AA` "\
#"(`Carrier Code`, `Date (MM/DD/YYYY)`, `Flight Number`, `Tail Number`, `Origin Airport`, `Scheduled Arrival Time`)"\
#"VALUES ('Carrier Code', 'Date (MM/DD/YYYY)', 'Flight Number', 'Tail Number', 'Origin Airport', 'Scheduled Arrival Time'),"\

# Some thing like  ('AA', '07/01/2021', '0941', 'N971NN', 'DFW', '15:50'),
#  ('AA', '07/01/2021', '0941', 'N971NN', 'DFW', '15:50');;