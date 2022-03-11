# from bs4 import BeautifulSoup
# from urllib.request import urlopen
import pymysql
# html_1 = urlopen("https://transtats.bts.gov/ONTIME/Departures.aspx")
# bs = BeautifulSoup(html_1.read(), 'html.parser')

# nameList = bs.findAll('input')
# for name in nameList:
#    print(name.get_text())


Query_0TR = "SELECT `{Arrival}`.`Date (MM/DD/YYYY)`,`{Arrival}`.`Flight Number`,"\
             "`{Arrival}`.`Origin Airport`, `{Arrival}`.`Scheduled Arrival Time`,"\
             "`{Depature}`.`Scheduled departure time`,"\
             "TIMEDIFF( `{Arrival}`.`Scheduled Arrival Time`, `{Depature}`.`Scheduled departure time`)"\
             "FROM `{Arrival}_A` AS `{Arrival}`"\
             "INNER JOIN `{Depature}_D` AS `{Depature}` ON `{Arrival}`.`Flight Number` = `{Depature}`.`Flight Number` AND `{Arrival}`.`Date (MM/DD/YYYY)` = `{Depature}`.`Date (MM/DD/YYYY)`"\
             "WHERE `{Arrival}`.`Origin Airport` = '{Depature}'"\
             "ORDER BY `Scheduled Arrival Time` ASC;"

#================
#SELECT `ATL`.`Date (MM/DD/YYYY)`,`ATL`.`Flight Number`, `ATL`.`Origin Airport`, `ATL`.`Scheduled Arrival Time`, `MSP`.`Scheduled departure time`, TIMEDIFF( `ATL`.`Scheduled Arrival Time`, `MSP`.`Scheduled departure time`)
#FROM `atlanta_a_aug_1_10` AS `ATL`
#INNER JOIN `minn_d_aug_1_10` AS `MSP` ON `ATL`.`Flight Number` = `MSP`.`Flight Number` AND `ATL`.`Date (MM/DD/YYYY)` = `MSP`.`Date (MM/DD/YYYY)`
#WHERE `ATL`.`Origin Airport` = 'MSP'
#ORDER BY `Scheduled Arrival Time` ASC;
#================

superior_airport = ['ORD', 'ATL', 'JFK', 'ORD']
inferior_airport = ['MSP', 'BNA', 'BDL', 'TPA']


quer_d_EA_0T = {}# First definiion of variable, collecting all queries for EARLYEST ARRIVIAL


###### User input
print("Here are some choice of you:")
start_input = input("Enter your start")
dest_input = input("Enter your destination")

######


# loop create SQL query
for i in range(1,len(superior_airport)):
    quer_d_EA_0T["{0}".format(x)] = f"SELECT  FROM {superior_airport[i]}"


connection = pymysql.connect(host='localhost',
                             user='root',
                             password='',
                             database='flight',
                             charset='utf8mb4',
                             cursorclass=pymysql.cursors.DictCursor)
cursor = connection.cursor()
query1 ="SELECT `ATL`.`Date (MM/DD/YYYY)`,`ATL`.`Flight Number`, `ATL`.`Origin Airport`, `ATL`.`Scheduled Arrival Time`, `MSP`.`Scheduled departure time`, TIMEDIFF( `ATL`.`Scheduled Arrival Time`, `MSP`.`Scheduled departure time`) FROM `atlanta_a_aug_1_10` AS `ATL` INNER JOIN `minn_d_aug_1_10` AS `MSP` ON `ATL`.`Flight Number` = `MSP`.`Flight Number` AND `ATL`.`Date (MM/DD/YYYY)` = `MSP`.`Date (MM/DD/YYYY)` WHERE `ATL`.`Origin Airport` = 'MSP' ORDER BY `Scheduled Arrival Time` ASC;"

cursor.execute(query1)
rows = cursor.fetchall()
for row in rows:
   print(row)

connection.commit()
connection.close()
