import sqlite3

# Connect to your existing database
conn = sqlite3.connect("database.db")
cursor = conn.cursor()


with open("quetry.sql", "r") as sql_file:
    sql_script = sql_file.read()
cursor.executescript(sql_script)

conn.commit()
conn.close()
print("SQL script executed successfully!")