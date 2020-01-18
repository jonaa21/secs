package sr.unasat.jpa.ui;

import java.util.List;
import java.util.Scanner;
import java.util.Stack;

public abstract class MenuFunctionality {

    static List<String> currentMenu;

    private Stack<List<String>> menuStack = new Stack<>();
    private Scanner scanner;

    static final String MENU_TEMPLATE = "%1$s. %2$s";

    MenuFunctionality() {
        this.scanner = new Scanner(System.in);
    }

    public Scanner getScanner() {
        return scanner;
    }

    void toMainMenu() {

        showMenu(Message.MAIN_MENU);
    }

    void showMenu(List<String> currentMenu) {
        int option = 1;
        this.menuStack.push(currentMenu);
        MenuFunctionality.currentMenu = currentMenu;

        for (String item : MenuFunctionality.currentMenu) {
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

    public Stack<List<String>> getMenuStack() {
        return menuStack;
    }

    abstract void makeSelection();
}
