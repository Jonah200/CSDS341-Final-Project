package edu.cwru.csds341;

import com.zaxxer.hikari.HikariConfig;
import com.zaxxer.hikari.HikariDataSource;

import java.io.IOException;
import java.io.InputStream;
import java.sql.Connection;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.Properties;

public class Database {

    private static HikariDataSource dataSource;

    public static void init() throws IOException {
        Properties props = new Properties();
        try (InputStream in = Database.class.getClassLoader().getResourceAsStream("db.properties")) {
            if (in == null) throw new IOException("db.properties not found on classpath");
            props.load(in);
        }

        HikariConfig config = new HikariConfig();
        config.setJdbcUrl(props.getProperty("db.url"));
        config.setUsername(props.getProperty("db.username"));
        config.setPassword(props.getProperty("db.password"));
        config.setMaximumPoolSize(5);

        dataSource = new HikariDataSource(config);
    }

    public static Connection getConnection() throws SQLException {
        return dataSource.getConnection();
    }

    public static void createDatabase{

        String createTeams = """
            CREATE TABLE IF NOT EXISTS Teams(
            team_id INT PRIMARY KEY,
            team_name VARCHAR(100),
            city VARCHAR(100));
            """;
        
        String createSeasons = """
            CREATE TABLE IF NOT EXISTS Seasons(
            seasons_id INT PRIMARY KEY,
            winner INT,
            year INT,
            FOREIGN KEY(winner) REFRENCES Teams(team_id));
            """;
        
        String createPlayers = """
            CREATE TABLE IF NOT EXISTS Players(
            player_id INT PRIMARY KEY,
            team_id INT,
            player_name VARCHAR(100),
            batting_average DECIMAL(4,3),
            strikeout_rate DECIMAL(4,3),
            position VARCHAR(100),
            FOREIGN KEY(team_id) REFRENCES Teams(team_id));
            """;
        
        String createGames = """
            CREATE TABLE IF NOT EXISTS Games(
            games_id INT PRIMARY KEY,
            season_id INT,
            home_team INT,
            away_team INT,
            date DATE,
            FOREIGN KEY(season_id) REFRENCES Seasons(Season_id)
            FOREIGN KEY(home_team) REFRENCES Teams(team_id)
            FOREIGN KEY(away_team) REFRENCES Teams(team_id));
            """;
        
        String create Pitches = """
            CREATE TABLE IF NOT EXISTS Pitches(
            pitches_id INT PRIMARY KEY,
            games_id INT,
            type VARCHAR(100),
            speed DECIMAL(5,1),
            spin_rate INT,
            pitcher_ID INT,
            result VARCHAR(100),
            FOREIGN KEY(games_id) REFRENCES Games(games_id)
            FOREIGN KEY(pitcher_id) REFRENCES Players(player_id)
            FOREIGN KEY(batter_id) REFRENCES Players(player_id));
            """;
            

        //Insert all 30 mlb teams
        String insertTeams = """
            INSERT INTO Teams(team_id, team_name, city) VALUES
            (1, 'Diamondbacks', 'Arizona'),
            (2, 'Athletics', 'Oakland'), 
            (3, 'Braves', 'Atlanta'), 
            (4, 'Orioles', 'Baltimore'), 
            (5, 'Red Sox', 'Boston'), 
            (6, 'Cubs', 'Chicago'), 
            (7, 'White Sox', 'Chicago'), 
            (8, 'Reds', 'Cincinnati'), 
            (9, 'Guardians', 'Cleveland'), 
            (10, 'Rockies', 'Colorado'), 
            (11, 'Tigers', 'Detroit'), 
            (12, 'Astros', 'Houston'), 
            (13, 'Royals', 'Kansas City'), 
            (14, 'Angels', 'Los Angeles'), 
            (15, 'Dodgers', 'Los Angeles'), 
            (16, 'Marlins', 'Miami'), 
            (17, 'Brewers', 'Milwaukee'), 
            (18, 'Twins', 'Minnesota'), 
            (19, 'Mets', 'New York'), 
            (20, 'Yankees', 'New York'), 
            (21, 'Phillies', 'Philadelphia'), 
            (22, 'Pirates', 'Pittsburgh'), 
            (23, 'Padres', 'San Diego'),
            (24, 'Giants', 'San Francisco'), 
            (25, 'Mariners', 'Seattle'), 
            (26, 'Cardinals', 'St. Louis'), 
            (27, 'Rays', 'Tampa Bay'), 
            (28, 'Rangers', 'Texas'),
            (29, 'Blue Jays', 'Toronto'), 
            (30, 'Nationals', 'Washington'), 
        """; 


        //Insert seasons
        String insertSeasons = """
            INSERT INTO Seasons(season_id, winner, year) VALUES
            """;


        //Insert player info
        String insertPlayers = """
            INSERT INTO Players(player_id, team_id, player_name, batting_average, strikeout_rate, position) VALUES
            """;

        //Insert games
        String insertGames = """
            INSERT INTO Games(games_id, season_id, home_team, away_team, date) VALUES
            """;

        //Insert Pitches
        String insertPitches = """
            INSERT INTO Pitches(pitches_id, games_id, type, speed, spin_rate, pitcher_id, batter_id, result) VALUES
            """;
    }

    public static void close() {
        if (dataSource != null) dataSource.close();
    }
}
