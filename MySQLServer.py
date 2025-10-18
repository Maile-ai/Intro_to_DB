import mysql.connector
from mysql.connector import Error

def create_database():
    try:
        # Directly use your verified password here for testing
        connection = mysql.connector.connect(
            host="localhost",
            user="root",
            password="Rles@22316429"  # Replace with the exact same one you used in MySQL terminal
        )

        if connection.is_connected():
            cursor = connection.cursor()
            cursor.execute("CREATE DATABASE IF NOT EXISTS alx_book_store")
            print("Database 'alx_book_store' created successfully!")

    except Error as e:
        print(f"Error connecting to MySQL or creating database: {e}")

    finally:
        if 'cursor' in locals() and cursor:
            cursor.close()
        if 'connection' in locals() and connection.is_connected():
            connection.close()

if __name__ == "__main__":
    create_database()