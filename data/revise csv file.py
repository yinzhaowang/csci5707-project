import os
import csv
import glob

path = r"C:\Users\Onionslime\Desktop\ms 3rd\csci 5707\project\python data access\venv\data"

list_of_files = glob.glob(path + "/*.csv")
#list_of_files = os.listdir(path)

for f_name in list_of_files:
    lines = open(f_name).readlines()
    #open(f_name, 'w').writelines(lines[7:])
    open(f_name, 'w').writelines(lines[:-1])




