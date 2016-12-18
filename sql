#OSMAN IN ********
##################

import sqlite3
import random
import time
import datetime

con = sqlite3.connect("courses.db")

cursor = con.cursor()

def tabloolustur():
    sql = "CREATE TABLE IF NOT EXISTS stage (zaman REAL, tarih TEXT, anahtarkelime TEXT, deger  REAL )"
    cursor.execute(sql)
    cursor.close()

def rastgeledegerekle() :
    zaman= time.time()
    tarih = str(datetime.datetime.fromtimestamp(zaman).strftime('%Y-%m-%d %H:%M:%S'))
    anahtarKelime = "Python"
    deger = random.randrange(0 , 10)
    sql = "INSERT INTO stage (zaman, tarih, anahtarkelime, deger) VALUES (?, ?, ?, ?)"
    cursor.execute(sql, (zaman, tarih, anahtarKelime, deger))
    con.commit()


i = 0
while ( i < 10):
    rastgeledegerekle()
    i +=1

cursor.close()
