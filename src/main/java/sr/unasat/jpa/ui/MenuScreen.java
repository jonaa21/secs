package sr.unasat.jpa.ui;

import sr.unasat.jpa.controller.AppController;
import sr.unasat.jpa.entity.Customer;
import sr.unasat.jpa.service.impl.BaseServiceImpl;

import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.*;

public abstract class MenuScreen {

    public static final int BACK = 0;
    private static final String MENU_TEMPLATE = "%1$s. %2$s";
    private static Map<List<String>, MenuScreen> menuMap = new HashMap();
    protected static Stack<MenuScreen> menuStack = new Stack<>();
    private static Scanner scanner = new Scanner(System.in);
    public static final AppController controller = AppController.getAppController();
    private List<String> menu;

    MenuScreen(List<String> menu) {
        menuMap.put(menu, this);
        setMenu(menu);
    }

    public abstract void showMenu();

    MenuScreen goBack() {
        if (!menuStack.isEmpty() && menuStack.size() > 1) {
            menuStack.pop();
        }

        return menuStack.peek();
    }

    public Scanner getScanner() {
        return scanner;
    }

    int getSelection() {
        try {
            return scanner.nextInt();
        } catch (InputMismatchException e) {
            System.out.println(Message.INVALID_ENTRY);
        }
        return -1;
    }

    void showMenuItems(List<String> menu) {
        int option = 1;

        MenuScreen menuScreen = null;
        boolean noneMatch = menuStack.stream().noneMatch(screen -> menuMap.get(menu).getMenu().containsAll(screen.getMenu()));
        if (menuMap.containsKey(menu) && noneMatch) {
            menuScreen = menuMap.get(menu);
            menuStack.push(menuScreen);
        }

        if (menu == null || menu.isEmpty()) {
            throw new RuntimeException(Message.UNEXPECTED_ERROR);
        }

        for (String item : menu) {
            System.out.println(String.format(MENU_TEMPLATE, option, item));
            option++;
        }

        if (menu.containsAll(Message.MAIN_MENU)) {
            System.out.println(Message.LOGOUT);
        } else if (!menu.containsAll(Message.HOME_PAGE)){
            System.out.println(Message.BACK);
        }

        System.out.print(Message.ENTER_NUMBER);
    }

    /**
     * @param menu entity menu
     * @param eClass entity class
     * @param <E> entity parameter
     */
    public <E> void showMenuItems(List<E> menu, Class<E> eClass) {

        try {
            Method getId = eClass.getDeclaredMethod("getId");
            menu.forEach(item -> {
                try {
                    Object invoked = getId.invoke(item);
                    System.out.println(String.format(MENU_TEMPLATE, invoked, item));
                } catch (IllegalAccessException | InvocationTargetException | NullPointerException e) {
                    e.printStackTrace();
                }
            });
        } catch (NoSuchMethodException e) {
            e.printStackTrace();
        }

        System.out.println(Message.BACK);
        System.out.print(Message.ENTER_NUMBER);
    }

    public List<String> getMenu() {
        return menu;
    }

    public void setMenu(List<String> menu) {
        this.menu = menu;
    }

    protected boolean getBoolean() {
        return scanner.next().equals("1");
    }

    void goToMenu(MenuScreen menuScreen) {
        if (menuScreen != null) menuScreen.showMenu();
        else {
            System.out.println(Message.INVALID_ENTRY);
            this.goBack().showMenu();
        };
    }

    public Customer getLoggedInCustomer() {
        return BaseServiceImpl.getLoggedInCustomer();
    }
}
