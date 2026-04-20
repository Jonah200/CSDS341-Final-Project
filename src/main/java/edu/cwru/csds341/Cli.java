package edu.cwru.csds341;

import edu.cwru.csds341.menu.GameMenu;
import edu.cwru.csds341.menu.PitchMenu;
import edu.cwru.csds341.menu.PlayerMenu;
import edu.cwru.csds341.menu.SeasonMenu;
import edu.cwru.csds341.menu.TeamMenu;

import java.util.Scanner;

public class Cli {

    private final Scanner scanner = new Scanner(System.in);

    private final TeamMenu   teamMenu   = new TeamMenu();
    private final PlayerMenu playerMenu = new PlayerMenu();
    private final GameMenu   gameMenu   = new GameMenu();
    private final SeasonMenu seasonMenu = new SeasonMenu();
    private final PitchMenu  pitchMenu  = new PitchMenu();

    public void run() {
        System.out.println("=== MLB Database ===");
        while (true) {
            System.out.println();
            System.out.println("1. Teams");
            System.out.println("2. Players");
            System.out.println("3. Games");
            System.out.println("4. Seasons");
            System.out.println("5. Pitches");
            System.out.println("0. Exit");
            System.out.print("> ");

            switch (readLine()) {
                case "1" -> teamMenu.run(scanner);
                case "2" -> playerMenu.run(scanner);
                case "3" -> gameMenu.run(scanner);
                case "4" -> seasonMenu.run(scanner);
                case "5" -> pitchMenu.run(scanner);
                case "0" -> { return; }
                default  -> System.out.println("Invalid option.");
            }
        }
    }

    private String readLine() {
        return scanner.nextLine().trim();
    }
}
