package edu.cwru.csds341;

public class Main {

    public static void main(String[] args) {
        try {
            Database.init();
        } catch (Exception e) {
            System.err.println("Failed to connect to database: " + e.getMessage());
            System.exit(1);
        }

        try {
            new Cli().run();
        } finally {
            Database.close();
        }
    }
}
