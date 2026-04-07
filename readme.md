# World Cup Database

This is my solution for the **World Cup Database** project, part of the freeCodeCamp Relational Database Certification.

In this project, I created a PostgreSQL database to store and query FIFA World Cup match data from 2014 and 2018. The project heavily relies on Bash scripting, SQL database creation, and data manipulation.

---

## Project Structure

* `games.csv`: A dataset containing the year, round, winner, opponent, and goals scored for each match.
* `insert_data.sh`: A Bash script that reads `games.csv` and automates the insertion of unique teams and match data into the PostgreSQL database.
* `queries.sh`: A Bash script containing various SQL queries to extract specific data and statistics about the matches and teams.
* `worldcup.sql`: A PostgreSQL database dump file to quickly rebuild the database structure and data.

---

## Technologies Used
* **PostgreSQL:** Database creation, relational table design (Primary/Foreign keys), and querying (Joins, aggregations, subqueries).
* **Bash Scripting:** File reading, variables, loops, conditional statements, and executing SQL commands directly from the terminal.

---

## How to Run

1. **Clone the repository:**
   ```bash
   git clone https://github.com/your-username/worldcup-database.git
   cd worldcup-database

2. **Rebuild the database from the dump file:**

```bash
psql -U postgres < worldcup.sql
```

3. **Then run the insertion script:**

```bash
chmod +x insert_data.sh queries.sh
./insert_data.sh
```

4. **Run the queries:**

```bash
./queries.sh
```

---

Project provided by freeCodeCamp.
