import tkinter as tk
import mysql.connector

from dotenv import load_dotenv
load_dotenv()

import os

# Create a function to handle inserting data into the selected MySQL table
def insert_data(table_name):
    if table_name not in ("User", "Artist", "Album", "Song", "Review"):
        return

    values = []
    for entry in entry_fields[table_name]:
        value = entry.get()
        values.append(value)

    # Connect to the MySQL database
    conn = mysql.connector.connect(
        host=os.getenv('DATABASE_HOST'),
        user=os.getenv('USER'),
        password=os.getenv('PASSWORD'),
        database="tunereviewsdb"
    )

    cursor = conn.cursor()

    # Define the SQL query to insert data into the selected table
    insert_query = f"INSERT INTO {table_name} VALUES ({', '.join(['%s' for _ in values])})"

    # Execute the query with the user input
    cursor.execute(insert_query, values)

    # Commit the changes and close the database connection
    conn.commit()
    conn.close()

    # Clear the input fields after insertion
    for entry in entry_fields[table_name]:
        entry.delete(0, 'end')

    # Close the insertion window
    windows[table_name].destroy()

# Function to create a new window for a specific table
def create_insertion_window(table_name):
    new_window = tk.Toplevel(app)
    new_window.title(f"Insert Data for {table_name}")

    entry_fields[table_name] = []

    for field in tables[table_name]:
        label = tk.Label(new_window, text=f"{field}:")
        label.pack()
        entry = tk.Entry(new_window)
        entry.pack()
        entry_fields[table_name].append(entry)

    # Create the "Insert" button
    insert_button = tk.Button(new_window, text=f"Insert {table_name}", command=lambda name=table_name: insert_data(name))
    insert_button.pack()

    # Create the "Cancel" button
    cancel_button = tk.Button(new_window, text="Cancel", command=new_window.destroy)
    cancel_button.pack()

    # Store the window reference
    windows[table_name] = new_window

# Create the main application window
app = tk.Tk()
app.title("Data Insertion")

# Create the entry_fields dictionary and windows dictionary
entry_fields = {}
windows = {}

# Define the tables and their respective fields
tables = {
    "User": ["User_ID", "Name", "Bio"],
    "Artist": ["Artist_ID", "Name", "Bio"],
    "Album": ["Album_ID", "Name", "Num_Songs", "Date_Made", "Artist_ID"],
    "Song": ["Song_ID", "Name", "Duration", "Date_Made", "Album_ID"],
    "Review": ["Review_ID", "Review_Text", "Date", "Album_ID", "Song_ID", "User_ID"]
}

# Create entry fields for each table
for table_name in tables.keys():
    create_button = tk.Button(app, text=f"Insert Data for {table_name}", command=lambda name=table_name: create_insertion_window(name))
    create_button.pack()

# Start the application
app.mainloop()
