import tkinter as tk
import mysql.connector

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
        host="your_mysql_host",
        user="your_mysql_username",
        password="your_mysql_password",
        database="your_database_name"
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
    "User": ["user_id", "username", "bio"],
    "Artist": ["artist_id", "name", "genre"],
    "Album": ["album_id", "title", "release_date", "artist_id"],
    "Song": ["song_id", "title", "duration", "album_id"],
    "Review": ["review_id", "user_id", "album_id", "rating", "comment"]
}

# Create entry fields for each table
for table_name in tables.keys():
    create_button = tk.Button(app, text=f"Insert Data for {table_name}", command=lambda name=table_name: create_insertion_window(name))
    create_button.pack()

# Start the application
app.mainloop()
