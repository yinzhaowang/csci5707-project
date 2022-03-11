import pymysql
import os
import csv
import glob

#################### open and upload
list_airpt = ['ord', 'atl', 'den', 'dfw', 'jfk', 'lax', 'mco', 'sea', 'san', 'abq', 'aus', 'bdl', 'bna', 'msp', 'pwm', 'tap']

connection = pymysql.connect(host='localhost',
                             user='root',
                             password='',
                             database='flight',
                             charset='utf8mb4',
                             cursorclass=pymysql.cursors.DictCursor)
cursor = connection.cursor()
for airpt in list_airpt:
    create_query = f"SELECT COUNT(`Flight Number`)*2 AS  `Airport throughput` FROM ( (SELECT `Flight Number` FROM `{airpt}_d_ua`) UNION ALL (SELECT `Flight Number` FROM `{airpt}_d_dl`) UNION ALL (SELECT `Flight Number` FROM `{airpt}_d_aa`) ) AS `{airpt}_total`;"
    cursor.execute(create_query)
    rows = cursor.fetchall()
    print(airpt, rows)

connection.commit()
connection.close()
