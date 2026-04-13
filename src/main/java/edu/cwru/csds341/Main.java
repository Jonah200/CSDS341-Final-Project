package edu.cwru.csds341;

import java.sql.Connection;
import java.sql.DatabaseMetaData;

public class Main {

    public static void main(String[] args) {
        try {
            Database.init();
            System.out.println("Connected to database.");

            try (Connection conn = Database.getConnection()) {
                DatabaseMetaData meta = conn.getMetaData();
                System.out.printf("PostgreSQL %s%n", meta.getDatabaseProductVersion());
            }

            Database.close();
        } catch (Exception e) {
            System.err.println("Error: " + e.getMessage());
            System.exit(1);
        }
    }
}
