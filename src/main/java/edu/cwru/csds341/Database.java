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
            city Varchar(100));
            """;

        //Insert all 30 mlb teams
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
    
            
            

    }

    public static void close() {
        if (dataSource != null) dataSource.close();
    }
}
