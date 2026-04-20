package edu.cwru.csds341.menu;

import edu.cwru.csds341.Database;

import java.sql.*;
import java.util.LinkedHashMap;
import java.util.Map;

public class GameMenu extends BaseMenu {

    @Override
    protected String title() { return "Games"; }

    @Override
    protected Map<String, Runnable> menuItems() {
        Map<String, Runnable> items = new LinkedHashMap<>();
        items.put("List games",                          this::listGames);
        items.put("Players in a game",                   this::playersInGame);
        items.put("Player performance in a game",        this::playerPerformance);
        items.put("Add game",                            this::addGame);
        items.put("Update game",                         this::updateGame);
        return items;
    }

    private void listGames() {
        String seasonInput = prompt("Filter by season year (blank = all)");
        boolean filterBySeason = !seasonInput.isEmpty();
        Integer seasonYear = null;
        if (filterBySeason) {
            try { seasonYear = Integer.parseInt(seasonInput); }
            catch (NumberFormatException e) { System.out.println("Invalid year."); return; }
        }

        String sql = """
                SELECT g.game_id, g.date, s.year AS season,
                       h.team_name AS home_team, a.team_name AS away_team
                FROM games g
                JOIN seasons s  ON g.season_id  = s.year
                JOIN teams h    ON g.home_team   = h.team_id
                JOIN teams a    ON g.away_team   = a.team_id
                """ + (filterBySeason ? "WHERE g.season_id = ? " : "") +
                "ORDER BY g.date DESC";

        try (Connection conn = Database.getConnection();
             PreparedStatement ps = conn.prepareStatement(sql)) {
            if (filterBySeason) ps.setInt(1, seasonYear);
            ResultSet rs = ps.executeQuery();
            System.out.printf("%n%-6s %-12s %-6s %-25s %-25s%n",
                    "ID", "Date", "Season", "Home Team", "Away Team");
            separator(76);
            boolean any = false;
            while (rs.next()) {
                any = true;
                System.out.printf("%-6d %-12s %-6d %-25s %-25s%n",
                        rs.getInt("game_id"),
                        rs.getString("date"),
                        rs.getInt("season"),
                        rs.getString("home_team"),
                        rs.getString("away_team"));
            }
            if (!any) System.out.println("No games found.");
        } catch (SQLException e) {
            System.err.println("DB error: " + e.getMessage());
        }
    }

    // Fan use case: identify which players participated in a game
    private void playersInGame() {
        Integer gameId = promptInt("Game ID");
        if (gameId == null) return;

        String sql = """
                SELECT p.player_name, p.position, t.team_name, 'Pitcher' AS role
                FROM pitches pi
                JOIN players p ON pi.pitcher_id = p.player_id
                JOIN teams   t ON p.team_id = t.team_id
                WHERE pi.game_id = ?
                UNION
                SELECT p.player_name, p.position, t.team_name, 'Batter' AS role
                FROM pitches pi
                JOIN players p ON pi.batter_id = p.player_id
                JOIN teams   t ON p.team_id = t.team_id
                WHERE pi.game_id = ?
                ORDER BY role, team_name, player_name
                """;

        try (Connection conn = Database.getConnection();
             PreparedStatement ps = conn.prepareStatement(sql)) {
            ps.setInt(1, gameId);
            ps.setInt(2, gameId);
            ResultSet rs = ps.executeQuery();
            System.out.printf("%n%-25s %-10s %-25s %-10s%n",
                    "Player", "Position", "Team", "Role");
            separator(72);
            boolean any = false;
            while (rs.next()) {
                any = true;
                System.out.printf("%-25s %-10s %-25s %-10s%n",
                        rs.getString("player_name"),
                        nullOrStr(rs.getString("position")),
                        rs.getString("team_name"),
                        rs.getString("role"));
            }
            if (!any) System.out.println("No pitches recorded for that game.");
        } catch (SQLException e) {
            System.err.println("DB error: " + e.getMessage());
        }
    }

    // Journalist use case: which players performed well in a game
    private void playerPerformance() {
        Integer gameId = promptInt("Game ID");
        if (gameId == null) return;

        String sql = """
                SELECT p.player_name, t.team_name, pi.result, COUNT(*) AS count
                FROM pitches pi
                JOIN players p ON pi.batter_id = p.player_id
                JOIN teams   t ON p.team_id = t.team_id
                WHERE pi.game_id = ?
                GROUP BY p.player_name, t.team_name, pi.result
                ORDER BY p.player_name, pi.result
                """;

        try (Connection conn = Database.getConnection();
             PreparedStatement ps = conn.prepareStatement(sql)) {
            ps.setInt(1, gameId);
            ResultSet rs = ps.executeQuery();
            System.out.printf("%n%-25s %-20s %-18s %-5s%n",
                    "Batter", "Team", "Result", "Count");
            separator(70);
            boolean any = false;
            while (rs.next()) {
                any = true;
                System.out.printf("%-25s %-20s %-18s %-5d%n",
                        rs.getString("player_name"),
                        rs.getString("team_name"),
                        nullOrStr(rs.getString("result")),
                        rs.getInt("count"));
            }
            if (!any) System.out.println("No pitches recorded for that game.");
        } catch (SQLException e) {
            System.err.println("DB error: " + e.getMessage());
        }
    }

    private void addGame() {
        Integer id       = promptInt("Game ID");
        if (id == null) return;
        Integer seasonId = promptInt("Season year");
        if (seasonId == null) return;
        Integer homeTeam = promptInt("Home team ID");
        if (homeTeam == null) return;
        Integer awayTeam = promptInt("Away team ID");
        if (awayTeam == null) return;
        String date      = prompt("Date (YYYY-MM-DD)");
        if (date.isEmpty()) { System.out.println("Date is required."); return; }

        String sql = "INSERT INTO games (game_id, season_id, home_team, away_team, date) VALUES (?, ?, ?, ?, ?)";
        try (Connection conn = Database.getConnection();
             PreparedStatement ps = conn.prepareStatement(sql)) {
            ps.setInt(1, id);
            ps.setInt(2, seasonId);
            ps.setInt(3, homeTeam);
            ps.setInt(4, awayTeam);
            ps.setDate(5, Date.valueOf(date));
            ps.executeUpdate();
            System.out.println("Game added.");
        } catch (IllegalArgumentException e) {
            System.out.println("Invalid date format. Use YYYY-MM-DD.");
        } catch (SQLException e) {
            System.err.println("DB error: " + e.getMessage());
        }
    }

    private void updateGame() {
        Integer id = promptInt("Game ID to update");
        if (id == null) return;
        String date = prompt("New date YYYY-MM-DD (blank = keep)");

        if (date.isEmpty()) { System.out.println("Nothing to update."); return; }

        String sql = "UPDATE games SET date = ? WHERE game_id = ?";
        try (Connection conn = Database.getConnection();
             PreparedStatement ps = conn.prepareStatement(sql)) {
            ps.setDate(1, Date.valueOf(date));
            ps.setInt(2, id);
            int rows = ps.executeUpdate();
            System.out.println(rows > 0 ? "Game updated." : "No game found with that ID.");
        } catch (IllegalArgumentException e) {
            System.out.println("Invalid date format. Use YYYY-MM-DD.");
        } catch (SQLException e) {
            System.err.println("DB error: " + e.getMessage());
        }
    }

    private static String nullOrStr(String s) { return s == null ? "N/A" : s; }
}
