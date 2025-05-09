import mysql.connector as mysql

def main():
    
    connect = mysql.connect(
        host = "localhost",
        user = "root",
        password = "gibinha157"
    )
    cursor = connect.cursor()

if __name__ == "__main__":
    main()


