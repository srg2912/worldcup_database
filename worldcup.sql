-- Create the database
CREATE DATABASE worldcup;

-- Connect to the database
\c worldcup

-- Create the teams table
CREATE TABLE teams (
  team_id SERIAL PRIMARY KEY,
  name VARCHAR UNIQUE NOT NULL
);

-- Create the games table
CREATE TABLE games (
  game_id SERIAL PRIMARY KEY,
  year INT NOT NULL,
  round VARCHAR NOT NULL,
  winner_id INT NOT NULL REFERENCES teams(team_id),
  opponent_id INT NOT NULL REFERENCES teams(team_id),
  winner_goals INT NOT NULL,
  opponent_goals INT NOT NULL
);

GRANT ALL PRIVILEGES ON ALL TABLES IN SCHEMA public TO freecodecamp;
GRANT ALL PRIVILEGES ON ALL SEQUENCES IN SCHEMA public TO freecodecamp;
ALTER TABLE games OWNER TO freecodecamp;
ALTER TABLE teams OWNER TO freecodecamp;

-- Exit the psql terminal
\q
