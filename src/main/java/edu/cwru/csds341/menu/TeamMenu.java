package edu.cwru.csds341.menu;

import edu.cwru.csds341.Database;

import java.sql.*;
import java.util.LinkedHashMap;
import java.util.Map;

public class TeamMenu extends BaseMenu {

    @Override
    protected String title() { return "Teams"; }

    @Override
    protected Map<String, Runnable> menuItems() {
        Map<String, Runnable> items = new LinkedHashMap<>();
        items.put("List all teams",            this::listTeams);
        items.put("Search teams by name",      this::searchByName);
        items.put("Team batting averages",     this::teamBattingAverages);
        items.put("Add team",                  this::addTeam);
        items.put("Update team",               this::updateTeam);
        return items;
    }

    private void listTeams() {
        String sql = "SELECT team_id, team_name, city FROM teams ORDER BY team_name";
        try (Connection conn = Database.getConnection();
             Statement st = conn.createStatement();
             ResultSet rs = st.executeQuery(sql)) {
            System.out.printf("%n%-6s %-28s %-20s%n", "ID", "Team Name", "City");
            separator(56);
            boolean any = false;
            while (rs.next()) {
                any = true;
                System.out.printf("%-6d %-28s %-20s%n",
                        rs.getInt("team_id"),
                        rs.getString("team_name"),
                        rs.getString("city"));
            }
            if (!any) System.out.println("No teams found.");
        } catch (SQLException e) {
            System.err.println("DB error: " + e.getMessage());
        }
    }

    private void searchByName() {
        String query = prompt("Team name (partial match)");
        if (query.isEmpty()) { System.out.println("Enter at least part of a name."); return; }
        String sql = "SELECT team_id, team_name, city FROM teams WHERE team_name ILIKE ? ORDER BY team_name";
        try (Connection conn = Database.getConnection();
             PreparedStatement ps = conn.prepareStatement(sql)) {
            ps.setString(1, "%" + query + "%");
            ResultSet rs = ps.executeQuery();
            System.out.printf("%n%-6s %-28s %-20s%n", "ID", "Team Name", "City");
            separator(56);
            boolean any = false;
            while (rs.next()) {
                any = true;
                System.out.printf("%-6d %-28s %-20s%n",
                        rs.getInt("team_id"),
                        rs.getString("team_name"),
                        rs.getString("city"));
            }
            if (!any) System.out.println("No teams matched \"" + query + "\".");
        } catch (SQLException e) {
            System.err.println("DB error: " + e.getMessage());
        }
    }

    private void teamBattingAverages() {
        String sql = """
                SELECT t.team_name, t.city,
                       AVG(p.batting_average) AS team_avg,
                       COUNT(p.player_id)     AS players
                FROM teams t
                JOIN players p ON p.team_id = t.team_id
                WHERE p.batting_average IS NOT NULL
                GROUP BY t.team_id, t.team_name, t.city
                ORDER BY team_avg DESC
                """;
        try (Connection conn = Database.getConnection();
             Statement st = conn.createStatement();
             ResultSet rs = st.executeQuery(sql)) {
            System.out.printf("%n%-4s %-28s %-20s %-10s %-7s%n",
                    "#", "Team", "City", "Avg BA", "Players");
            separator(71);
            int rank = 1;
            boolean any = false;
            while (rs.next()) {
                any = true;
                System.out.printf("%-4d %-28s %-20s %-10.3f %-7d%n",
                        rank++,
                        rs.getString("team_name"),
                        rs.getString("city"),
                        rs.getDouble("team_avg"),
                        rs.getInt("players"));
            }
            if (!any) System.out.println("No player batting data found.");
        } catch (SQLException e) {
            System.err.println("DB error: " + e.getMessage());
        }
    }

    private void addTeam() {
        Integer id   = promptInt("Team ID");
        if (id == null) return;
        String name  = prompt("Team name");
        String city  = prompt("City");
        if (name.isEmpty() || city.isEmpty()) {
            System.out.println("Name and city are required.");
            return;
        }
        String sql = "INSERT INTO teams (team_id, team_name, city) VALUES (?, ?, ?)";
        try (Connection conn = Database.getConnection();
             PreparedStatement ps = conn.prepareStatement(sql)) {
            ps.setInt(1, id);
            ps.setString(2, name);
            ps.setString(3, city);
            ps.executeUpdate();
            System.out.println("Team added.");
        } catch (SQLException e) {
            System.err.println("DB error: " + e.getMessage());
        }
    }

    private void updateTeam() {
        Integer id = promptInt("Team ID to update");
        if (id == null) return;
        String name = prompt("New team name (blank = keep)");
        String city = prompt("New city (blank = keep)");
        if (name.isEmpty() && city.isEmpty()) {
            System.out.println("Nothing to update.");
            return;
        }

        StringBuilder sql = new StringBuilder("UPDATE teams SET ");
        boolean first = true;
        if (!name.isEmpty()) { sql.append("team_name = ?");           first = false; }
        if (!city.isEmpty())  { if (!first) sql.append(", "); sql.append("city = ?"); }
        sql.append(" WHERE team_id = ?");

        try (Connection conn = Database.getConnection();
             PreparedStatement ps = conn.prepareStatement(sql.toString())) {
            int i = 1;
            if (!name.isEmpty()) ps.setString(i++, name);
            if (!city.isEmpty()) ps.setString(i++, city);
            ps.setInt(i, id);
            int rows = ps.executeUpdate();
            System.out.println(rows > 0 ? "Team updated." : "No team found with that ID.");
        } catch (SQLException e) {
            System.err.println("DB error: " + e.getMessage());
        }
    }
}
