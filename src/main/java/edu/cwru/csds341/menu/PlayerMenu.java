package edu.cwru.csds341.menu;

import edu.cwru.csds341.Database;

import java.sql.*;
import java.util.LinkedHashMap;
import java.util.Map;

public class PlayerMenu extends BaseMenu {

    @Override
    protected String title() { return "Players"; }

    @Override
    protected Map<String, Runnable> menuItems() {
        Map<String, Runnable> items = new LinkedHashMap<>();
        items.put("List players (optionally by team)", this::listPlayers);
        items.put("Best batting average",              this::bestBattingAverage);
        items.put("Best strikeout rate",               this::bestStrikeoutRate);
        items.put("Add player",                        this::addPlayer);
        items.put("Update player",                     this::updatePlayer);
        return items;
    }

    private void listPlayers() {
        String teamName = prompt("Filter by team name (partial match, blank = all)");
        boolean filterByTeam = !teamName.isEmpty();

        String sql = """
                SELECT p.player_id, p.player_name, p.position, p.batting_average,
                       p.strikeout_rate, t.team_name
                FROM players p
                JOIN teams t ON p.team_id = t.team_id
                """ + (filterByTeam ? "WHERE t.team_name ILIKE ? " : "") +
                "ORDER BY t.team_name, p.player_name";

        try (Connection conn = Database.getConnection();
             PreparedStatement ps = conn.prepareStatement(sql)) {
            if (filterByTeam) ps.setString(1, "%" + teamName + "%");
            ResultSet rs = ps.executeQuery();
            System.out.printf("%n%-6s %-25s %-10s %-8s %-10s %-20s%n",
                    "ID", "Name", "Position", "Avg", "K-Rate", "Team");
            separator(81);
            boolean any = false;
            while (rs.next()) {
                any = true;
                System.out.printf("%-6d %-25s %-10s %-8s %-10s %-20s%n",
                        rs.getInt("player_id"),
                        rs.getString("player_name"),
                        nullOrStr(rs.getString("position")),
                        nullOrStr(rs.getString("batting_average")),
                        nullOrStr(rs.getString("strikeout_rate")),
                        rs.getString("team_name"));
            }
            if (!any) System.out.println("No players found.");
        } catch (SQLException e) {
            System.err.println("DB error: " + e.getMessage());
        }
    }

    private void bestBattingAverage() {
        String teamName = prompt("Filter by team name (partial match, blank = all)");
        String position = prompt("Filter by position (e.g. SP, 2B, CF — blank = all)");

        String sql = """
                SELECT p.player_name, p.batting_average, p.position, t.team_name
                FROM players p
                JOIN teams t ON p.team_id = t.team_id
                WHERE p.batting_average IS NOT NULL
                """ + teamClause(teamName) + positionClause(position) +
                "ORDER BY p.batting_average DESC LIMIT 10";

        System.out.println("\nTop 10 by batting average:");
        runRankingQuery(sql, teamName, position, "batting_average");
    }

    private void bestStrikeoutRate() {
        String teamName = prompt("Filter by team name (partial match, blank = all)");
        String position = prompt("Filter by position (e.g. SP, 2B, CF — blank = all)");

        String sql = """
                SELECT p.player_name, p.strikeout_rate AS batting_average, p.position, t.team_name
                FROM players p
                JOIN teams t ON p.team_id = t.team_id
                WHERE p.strikeout_rate IS NOT NULL
                """ + teamClause(teamName) + positionClause(position) +
                "ORDER BY p.strikeout_rate LIMIT 10";

        System.out.println("\nTop 10 by strikeout rate:");
        runRankingQuery(sql, teamName, position, "batting_average");
    }

    private static String teamClause(String teamName) {
        return teamName.isEmpty() ? "" : "AND t.team_name ILIKE ? ";
    }

    private static String positionClause(String position) {
        return position.isEmpty() ? "" : "AND p.position ILIKE ? ";
    }

    private void runRankingQuery(String sql, String teamName, String position, String metricCol) {
        try (Connection conn = Database.getConnection();
             PreparedStatement ps = conn.prepareStatement(sql)) {
            int i = 1;
            if (!teamName.isEmpty()) ps.setString(i++, "%" + teamName + "%");
            if (!position.isEmpty()) ps.setString(i,   "%" + position + "%");
            ResultSet rs = ps.executeQuery();
            System.out.printf("%-4s %-25s %-10s %-10s %-20s%n",
                    "#", "Name", "Value", "Position", "Team");
            separator(71);
            int rank = 1;
            boolean any = false;
            while (rs.next()) {
                any = true;
                System.out.printf("%-4d %-25s %-10s %-10s %-20s%n",
                        rank++,
                        rs.getString("player_name"),
                        nullOrStr(rs.getString(metricCol)),
                        nullOrStr(rs.getString("position")),
                        rs.getString("team_name"));
            }
            if (!any) System.out.println("No players found.");
        } catch (SQLException e) {
            System.err.println("DB error: " + e.getMessage());
        }
    }

    private void addPlayer() {
        Integer id     = promptInt("Player ID");
        if (id == null) return;
        Integer teamId = promptInt("Team ID");
        if (teamId == null) return;
        String name    = prompt("Player name");
        if (name.isEmpty()) { System.out.println("Name is required."); return; }
        String position = prompt("Position (blank = null)");
        Double avg      = promptDouble("Batting average (blank = null)");
        Double kRate    = promptDouble("Strikeout rate (blank = null)");

        String sql = """
                INSERT INTO players (player_id, team_id, player_name, position, batting_average, strikeout_rate)
                VALUES (?, ?, ?, ?, ?, ?)
                """;
        try (Connection conn = Database.getConnection();
             PreparedStatement ps = conn.prepareStatement(sql)) {
            ps.setInt(1, id);
            ps.setInt(2, teamId);
            ps.setString(3, name);
            setNullableString(ps, 4, position);
            setNullableDouble(ps, 5, avg);
            setNullableDouble(ps, 6, kRate);
            ps.executeUpdate();
            System.out.println("Player added.");
        } catch (SQLException e) {
            System.err.println("DB error: " + e.getMessage());
        }
    }

    private void updatePlayer() {
        Integer id = promptInt("Player ID to update");
        if (id == null) return;
        String name     = prompt("New name (blank = keep)");
        String position = prompt("New position (blank = keep)");
        String avgStr   = prompt("New batting average (blank = keep)");
        String kRateStr = prompt("New strikeout rate (blank = keep)");

        if (name.isEmpty() && position.isEmpty() && avgStr.isEmpty() && kRateStr.isEmpty()) {
            System.out.println("Nothing to update.");
            return;
        }

        StringBuilder sql = new StringBuilder("UPDATE players SET ");
        boolean first = true;
        if (!name.isEmpty())     { sql.append("player_name = ?");     first = false; }
        if (!position.isEmpty()) { if (!first) sql.append(", "); sql.append("position = ?");      first = false; }
        if (!avgStr.isEmpty())   { if (!first) sql.append(", "); sql.append("batting_average = ?"); first = false; }
        if (!kRateStr.isEmpty()) { if (!first) sql.append(", "); sql.append("strikeout_rate = ?"); }
        sql.append(" WHERE player_id = ?");

        try (Connection conn = Database.getConnection();
             PreparedStatement ps = conn.prepareStatement(sql.toString())) {
            int i = 1;
            if (!name.isEmpty())     ps.setString(i++, name);
            if (!position.isEmpty()) ps.setString(i++, position);
            if (!avgStr.isEmpty())   ps.setDouble(i++, Double.parseDouble(avgStr));
            if (!kRateStr.isEmpty()) ps.setDouble(i++, Double.parseDouble(kRateStr));
            ps.setInt(i, id);
            int rows = ps.executeUpdate();
            System.out.println(rows > 0 ? "Player updated." : "No player found with that ID.");
        } catch (SQLException | NumberFormatException e) {
            System.err.println("Error: " + e.getMessage());
        }
    }

    private static String nullOrStr(String s) { return s == null ? "N/A" : s; }

    private static void setNullableString(PreparedStatement ps, int idx, String val) throws SQLException {
        if (val == null || val.isEmpty()) ps.setNull(idx, Types.VARCHAR);
        else ps.setString(idx, val);
    }

    private static void setNullableDouble(PreparedStatement ps, int idx, Double val) throws SQLException {
        if (val == null) ps.setNull(idx, Types.NUMERIC);
        else ps.setDouble(idx, val);
    }
}
