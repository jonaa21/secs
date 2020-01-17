package sr.unasat.jpa.ui;

import java.util.List;
import java.util.Scanner;

public abstract class MenuFunctionality {

    static List<String> currentMenu;
    private Scanner scanner;
    static final String MENU_TEMPLATE = "%1$s. %2$s";

    MenuFunctionality() {
        this.scanner = new Scanner(System.in);
    }

    public Scanner getScanner() {
        return scanner;
    }

    void toMainMenu() {

        currentMenu = Message.MAIN_MENU;
        showMenu(currentMenu);
    }

    void showMenu(List<String> currentMenu) {
        int option = 1;
        MenuFunctionality.currentMenu = currentMenu;

        for (String item : currentMenu) {
            System.out.println(String.format(MENU_TEMPLATE, option, item));
            option++;
        }

        if (currentMenu.containsAll(Message.MAIN_MENU)) {
            System.out.println(Message.LOGOUT);
        } else {
            System.out.println(Message.BACK);
        }

        System.out.print(Message.ENTER_NUMBER);
    }

    abstract void makeSelection();
}
