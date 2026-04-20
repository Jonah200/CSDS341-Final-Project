package edu.cwru.csds341.menu;

import java.util.LinkedHashMap;
import java.util.Map;
import java.util.Scanner;

abstract class BaseMenu {

    protected Scanner scanner;

    public final void run(Scanner scanner) {
        this.scanner = scanner;
        while (true) {
            System.out.println("\n=== " + title() + " ===");
            Map<String, Runnable> items = menuItems();
            int i = 1;
            for (String label : items.keySet()) {
                System.out.printf("%d. %s%n", i++, label);
            }
            System.out.println("0. Back");
            System.out.print("> ");

            String choice = scanner.nextLine().trim();
            if ("0".equals(choice)) return;

            try {
                int idx = Integer.parseInt(choice) - 1;
                Runnable[] actions = items.values().toArray(new Runnable[0]);
                if (idx >= 0 && idx < actions.length) {
                    actions[idx].run();
                } else {
                    System.out.println("Invalid option.");
                }
            } catch (NumberFormatException e) {
                System.out.println("Invalid option.");
            }
        }
    }

    protected abstract String title();
    protected abstract Map<String, Runnable> menuItems();

    protected String prompt(String label) {
        System.out.print(label + ": ");
        return scanner.nextLine().trim();
    }

    protected Integer promptInt(String label) {
        String val = prompt(label);
        if (val.isEmpty()) return null;
        try {
            return Integer.parseInt(val);
        } catch (NumberFormatException e) {
            System.out.println("Invalid number.");
            return null;
        }
    }

    protected Double promptDouble(String label) {
        String val = prompt(label);
        if (val.isEmpty()) return null;
        try {
            return Double.parseDouble(val);
        } catch (NumberFormatException e) {
            System.out.println("Invalid number.");
            return null;
        }
    }

    protected void separator(int width) {
        System.out.println("-".repeat(width));
    }
}
