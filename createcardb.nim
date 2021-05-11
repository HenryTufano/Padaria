import db_postgres

let db=open("localhost","garageadmin","garageveiculos","garagedb")
db.exec(sql"DROP TABLE IF EXISTS cars")
db.exec(sql"""CREATE TABLE cars(
        carId SERIAL PRIMARY KEY,
        model VARCHAR(40) NOT NULL,
        clp VARCHAR(40) NOT NULL,
        brand VARCHAR(40) NOT NULL,
        cat VARCHAR(40) NOT NULL,
        color VARCHAR(40) NOT NULL,
        year INTEGER NOT NULL)""")

db.exec(sql"DROP TABLE IF EXISTS customers")
db.exec(sql"""CREATE TABLE customers(
        customersId SERIAL PRIMARY KEY,
        name VARCHAR(100) NOT NULL,
        adress VARCHAR(100) NOT NULL,
        phone VARCHAR(20) NOT NULL,
        email VARCHAR(100) NOT NULL)""")
db.close()

