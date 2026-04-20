-- Drop in reverse dependency order
DROP TABLE IF EXISTS pitches;
DROP TABLE IF EXISTS games;
DROP TABLE IF EXISTS players;
DROP TABLE IF EXISTS seasons;
DROP TABLE IF EXISTS teams;

CREATE TABLE teams (
    team_id   INTEGER PRIMARY KEY,
    team_name VARCHAR NOT NULL,
    city      VARCHAR NOT NULL
);

CREATE TABLE seasons (
    year   INTEGER PRIMARY KEY,
    winner INTEGER REFERENCES teams(team_id)
);

CREATE TABLE players (
    player_id       INTEGER PRIMARY KEY,
    team_id         INTEGER NOT NULL REFERENCES teams(team_id),
    player_name     VARCHAR NOT NULL,
    batting_average NUMERIC(5, 3),
    strikeout_rate  NUMERIC(5, 3),
    position        VARCHAR
);

CREATE TABLE games (
    game_id   INTEGER PRIMARY KEY,
    season_id INTEGER NOT NULL REFERENCES seasons(year),
    home_team INTEGER NOT NULL REFERENCES teams(team_id),
    away_team INTEGER NOT NULL REFERENCES teams(team_id),
    date      DATE    NOT NULL
);

CREATE TABLE pitches (
    pitch_id   INTEGER PRIMARY KEY,
    game_id    INTEGER REFERENCES games(game_id),
    type       VARCHAR,
    speed      NUMERIC(5, 1),
    spin_rate  NUMERIC(7, 1),
    pitcher_id INTEGER REFERENCES players(player_id),
    batter_id  INTEGER REFERENCES players(player_id),
    result     VARCHAR
);
