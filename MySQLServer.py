import mysql.connector

def create_database():
    try:
    
        connection = mysql.connector.connect(
            host="localhost",
            user="root",
            password="Rles@22316429"
        )
        cursor = connection.cursor()
        cursor.execute("CREATE DATABASE IF NOT EXISTS alx_book_store")
        print("Database 'alx_book_store' created successfully!")

    except mysql.connector.Error as err:  # explicitly catch MySQL errors
        print(f"Error connecting to MySQL or creating database: {err}")

    finally:
        # Close cursor and connection properly
        if 'cursor' in locals() and cursor:
            cursor.close()
        if 'connection' in locals() and connection.is_connected():
            connection.close()

if __name__ == "__main__":
    create_database()