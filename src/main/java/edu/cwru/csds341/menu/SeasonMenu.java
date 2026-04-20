package edu.cwru.csds341.menu;

import edu.cwru.csds341.Database;

import java.sql.*;
import java.util.LinkedHashMap;
import java.util.Map;

public class SeasonMenu extends BaseMenu {

    @Override
    protected String title() { return "Seasons"; }

    @Override
    protected Map<String, Runnable> menuItems() {
        Map<String, Runnable> items = new LinkedHashMap<>();
        items.put("List seasons",      this::listSeasons);
        items.put("Add season",        this::addSeason);
        items.put("Set season winner", this::setWinner);
        return items;
    }

    private void listSeasons() {
        String sql = """
                SELECT s.year, t.team_name AS winner
                FROM seasons s
                LEFT JOIN teams t ON s.winner = t.team_id
                ORDER BY s.year DESC
                """;
        try (Connection conn = Database.getConnection();
             Statement st = conn.createStatement();
             ResultSet rs = st.executeQuery(sql)) {
            System.out.printf("%n%-6s %-25s%n", "Year", "Winner");
            separator(32);
            boolean any = false;
            while (rs.next()) {
                any = true;
                String winner = rs.getString("winner");
                System.out.printf("%-6d %-25s%n",
                        rs.getInt("year"),
                        winner == null ? "(TBD)" : winner);
            }
            if (!any) System.out.println("No seasons found.");
        } catch (SQLException e) {
            System.err.println("DB error: " + e.getMessage());
        }
    }

    private void addSeason() {
        Integer year = promptInt("Season year");
        if (year == null) return;
        String winnerInput = prompt("Winner team ID (blank = TBD)");
        Integer winnerId = null;
        if (!winnerInput.isEmpty()) {
            try { winnerId = Integer.parseInt(winnerInput); }
            catch (NumberFormatException e) { System.out.println("Invalid team ID."); return; }
        }

        String sql = "INSERT INTO seasons (year, winner) VALUES (?, ?)";
        try (Connection conn = Database.getConnection();
             PreparedStatement ps = conn.prepareStatement(sql)) {
            ps.setInt(1, year);
            if (winnerId != null) ps.setInt(2, winnerId);
            else ps.setNull(2, Types.INTEGER);
            ps.executeUpdate();
            System.out.println("Season added.");
        } catch (SQLException e) {
            System.err.println("DB error: " + e.getMessage());
        }
    }

    private void setWinner() {
        Integer year     = promptInt("Season year");
        if (year == null) return;
        Integer winnerId = promptInt("Winner team ID");
        if (winnerId == null) return;

        String sql = "UPDATE seasons SET winner = ? WHERE year = ?";
        try (Connection conn = Database.getConnection();
             PreparedStatement ps = conn.prepareStatement(sql)) {
            ps.setInt(1, winnerId);
            ps.setInt(2, year);
            int rows = ps.executeUpdate();
            System.out.println(rows > 0 ? "Season winner updated." : "No season found for that year.");
        } catch (SQLException e) {
            System.err.println("DB error: " + e.getMessage());
        }
    }
}
