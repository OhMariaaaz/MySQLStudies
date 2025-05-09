import mysql.connector as mysql

def connect(password):
    connect = mysql.connect(
        database = "studydb",
        host = "localhost",
        user = "root",
        password = f"{password}"
    )
    cursor = connect.cursor()
    
    cursor.execute("SELECT VERSION()")
    version = cursor.fetchone()[0]
    print(f"MySQL version {version}")

    return cursor


