import db_connection

def main():

    print("Welcome")

    password = input("Digite a senha de acesso ao banco de dados: ")
    cursor = db_connection.connect(password)

if __name__ == "__main__":
    main()