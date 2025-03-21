# SOEN 363: Data Systems for Software Engineers - Assignment 2

## Overview

This assignment involves the creation of a local database for Star Wars movies, focusing on data capture, schema creation, SQL queries, and database client usage. The goal is to normalize the Star Wars movie database using data from multiple APIs and sources. This includes collecting data on films, people, planets, species, vehicles, and starships from the Star Wars API, movie ratings and IMDB IDs from the OMDB API, and additional metadata like popularity and keywords from the TMDB dataset on Kaggle. The database will be implemented using PostgreSQL.

## Getting Started

Follow these steps to get your development environment up and running for this assignment.

### Prerequisites

Make sure you have the following installed and set up:

- PostgreSQL - For implementing and managing the database.
- Python 3.x - If you're using Python for API interactions.
- PostgreSQL Client Libraries - You can use libraries such as psycopg2 for Python.

### Installing

1. Install Python Dependencies: If you're using Python for API interaction, install the required libraries:

```bash
pip install psycopg2 requests
```

2. Set Up PostgreSQL: Install and set up PostgreSQL on your local machine if it's not installed already. Use pgAdmin or the PostgreSQL CLI to manage your database.

3. Set Up the Database:
   Create a PostgreSQL database for this project.
   Use DDL scripts (located in the `ddl` folder) to set up the initial tables based on the Star Wars API, OMDB API, and TMDB datasets.

4. Setting up the environment variables: Your `.env` file should look like the following:

```plaintext
UNNORMALIZED_DB_NAME=
NORMALIZED_DB_NAME=
DB_USER=
DB_PASSWORD=
DB_HOST=
DB_PORT=
```

5. Run the Python scripts: These scripts (located in the `scripts` folder) faciliate the deletion, creation, and insertion of data into the tables.

6. Run the requested queries: The queries from Part 7 can then be run.

> [!NOTE]
> Alternatively, the [Jupyter Notebook](A3_NiravPatel_40248940.ipynb) file to run the code and view the query results without having to run it locally.

### Additional Requirements

In regards to the ERD diagrams, the `erd` folder contains both the unnormalized and normalized ERD diagrams.

In regards to the DML scripts, the `dml` folder contains the DML scripts that can be used to populate both unnormalized and normalized databases. 

## License

This project is licensed under the MIT License - see the LICENSE file for details.

## Acknowledgments

- Thanks to the Star Wars API for providing the movie data.
- Thanks to OMDB and Kaggle for their respective APIs and datasets.
