package edu.cwru.csds341.menu;

import edu.cwru.csds341.Database;

import java.sql.*;
import java.util.LinkedHashMap;
import java.util.Map;

public class PitchMenu extends BaseMenu {

    @Override
    protected String title() { return "Pitches"; }

    @Override
    protected Map<String, Runnable> menuItems() {
        Map<String, Runnable> items = new LinkedHashMap<>();
        items.put("Fastest pitch by type",  this::fastestByType);
        items.put("List pitches in a game", this::listInGame);
        items.put("Add pitch",              this::addPitch);
        return items;
    }

    // Analyst use case: fastest pitch per pitch type
    private void fastestByType() {
        String sql = """
                SELECT DISTINCT ON (pi.type)
                       pi.type, pi.speed, pi.spin_rate,
                       p.player_name AS pitcher
                FROM pitches pi
                JOIN players p ON pi.pitcher_id = p.player_id
                WHERE pi.speed IS NOT NULL
                ORDER BY pi.type, pi.speed DESC
                """;
        try (Connection conn = Database.getConnection();
             Statement st = conn.createStatement();
             ResultSet rs = st.executeQuery(sql)) {
            System.out.printf("%n%-6s %-10s %-10s %-25s%n",
                    "Type", "Speed", "Spin Rate", "Pitcher");
            separator(53);
            boolean any = false;
            while (rs.next()) {
                any = true;
                System.out.printf("%-6s %-10s %-10s %-25s%n",
                        rs.getString("type"),
                        nullOrStr(rs.getString("speed")),
                        nullOrStr(rs.getString("spin_rate")),
                        rs.getString("pitcher"));
            }
            if (!any) System.out.println("No pitch data found.");
        } catch (SQLException e) {
            System.err.println("DB error: " + e.getMessage());
        }
    }

    private void listInGame() {
        Integer gameId = promptInt("Game ID");
        if (gameId == null) return;

        String sql = """
                SELECT pi.pitch_id, pi.type, pi.speed, pi.spin_rate, pi.result,
                       pr.player_name AS pitcher, ba.player_name AS batter
                FROM pitches pi
                JOIN players pr ON pi.pitcher_id = pr.player_id
                JOIN players ba ON pi.batter_id  = ba.player_id
                WHERE pi.game_id = ?
                ORDER BY pi.pitch_id
                """;
        try (Connection conn = Database.getConnection();
             PreparedStatement ps = conn.prepareStatement(sql)) {
            ps.setInt(1, gameId);
            ResultSet rs = ps.executeQuery();
            System.out.printf("%n%-8s %-5s %-7s %-10s %-18s %-20s %-20s%n",
                    "ID", "Type", "Speed", "Spin Rate", "Result", "Pitcher", "Batter");
            separator(90);
            boolean any = false;
            while (rs.next()) {
                any = true;
                System.out.printf("%-8d %-5s %-7s %-10s %-18s %-20s %-20s%n",
                        rs.getInt("pitch_id"),
                        nullOrStr(rs.getString("type")),
                        nullOrStr(rs.getString("speed")),
                        nullOrStr(rs.getString("spin_rate")),
                        nullOrStr(rs.getString("result")),
                        rs.getString("pitcher"),
                        rs.getString("batter"));
            }
            if (!any) System.out.println("No pitches found for that game.");
        } catch (SQLException e) {
            System.err.println("DB error: " + e.getMessage());
        }
    }

    private void addPitch() {
        Integer id        = promptInt("Pitch ID");
        if (id == null) return;
        Integer gameId    = promptInt("Game ID");
        if (gameId == null) return;
        Integer pitcherId = promptInt("Pitcher player ID");
        if (pitcherId == null) return;
        Integer batterId  = promptInt("Batter player ID");
        if (batterId == null) return;
        String type       = prompt("Pitch type (FF, SL, CT, CU, etc.)");
        Double speed      = promptDouble("Speed (blank = null)");
        Double spinRate   = promptDouble("Spin rate (blank = null)");
        String result     = prompt("Result (hit, strikeout, walk, hit_into_play, etc. — blank = null)");

        String sql = """
                INSERT INTO pitches (pitch_id, game_id, pitcher_id, batter_id, type, speed, spin_rate, result)
                VALUES (?, ?, ?, ?, ?, ?, ?, ?)
                """;
        try (Connection conn = Database.getConnection();
             PreparedStatement ps = conn.prepareStatement(sql)) {
            ps.setInt(1, id);
            ps.setInt(2, gameId);
            ps.setInt(3, pitcherId);
            ps.setInt(4, batterId);
            setNullableString(ps, 5, type);
            setNullableDouble(ps, 6, speed);
            setNullableDouble(ps, 7, spinRate);
            setNullableString(ps, 8, result);
            ps.executeUpdate();
            System.out.println("Pitch added.");
        } catch (SQLException e) {
            System.err.println("DB error: " + e.getMessage());
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
