package sr.unasat.jpa.ui;

import sr.unasat.jpa.controller.AppController;
import sr.unasat.jpa.entity.Computer;
import sr.unasat.jpa.entity.Customer;
import sr.unasat.jpa.entity.Hardware;
import sr.unasat.jpa.entity.HardwareStock;
import sr.unasat.jpa.service.impl.BaseServiceImpl;

import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.*;

public abstract class MenuScreen {

    public static final int BACK = 0;
    public static final AppController controller = AppController.getAppController();
    private static final String MENU_TEMPLATE = "%1$s. %2$s";
    protected static Stack<MenuScreen> menuStack = new Stack<>();
    protected static List<Computer> cart = new ArrayList<>();
    private static Map<List<String>, MenuScreen> menuMap = new HashMap();
    private static Scanner scanner = new Scanner(System.in);
    private List<String> menu;

    MenuScreen(List<String> menu) {
        menuMap.put(menu, this);
        setMenu(menu);
    }

    public abstract void showMenu();

    MenuScreen goToMainMenu() {
        while (!menuStack.isEmpty() && !menuStack.peek().getMenu().containsAll(Message.MAIN_MENU)) {
            menuStack.pop();
        }
        return menuStack.peek();
    }

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

        if (menu.containsAll(Message.MAIN_MENU) || menu.containsAll(Message.ADMIN_SCREEN)) {
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
        if (menuScreen != null) {
            menuScreen.showMenu();
        } else {
            System.out.println(Message.INVALID_ENTRY);
            this.goBack().showMenu();
        }
    }

    public Customer getLoggedInCustomer() {
        return BaseServiceImpl.getLoggedInCustomer();
    }

    protected void addToCart(Computer computer) {
        cart.add(computer);
    }

    protected void viewHardwareSpecs(List<Hardware> hardwareList) {
        String category, name, brand, unit;
        Integer amount;
        Double size;

        if (hardwareList.isEmpty()) {
            return;
        }

        for (Hardware hardware : hardwareList) {
            HardwareStock hardwareStock = hardware.getHardwareStock();
            category = hardwareStock.getCategory().getCategoryName().getCategory();
            name = hardwareStock.getName();
            brand = hardwareStock.getBrand().getName();
            amount = hardware.getAmount();
            unit = hardwareStock.getUnit();
            size = hardwareStock.getSize();

            String format = String.format("\nName: %1$s\nSize: %2$s %3$s\nAmount: %4$s\nBrand: %5$s\nCategory: %6$s\n",
                    name, size, unit, amount, brand, category);
            System.out.print(format);
        }
    }

    protected MenuScreen addToCartMenu(Computer computer) {
        MenuScreen menuScreen = null;
        System.out.println("\n1. " + Message.ADD_TO_CART);
        System.out.println(Message.BACK);
        System.out.print(Message.ENTER_NUMBER);

        int option = getSelection();

        switch (option) {
            case 1:
                addToCart(computer);
                System.out.println(Message.ADD_TO_CART_SUCCESS);
                menuScreen = goToMainMenu();
                break;
            case BACK:
            default:
                menuScreen = this;
                break;
        }
        return menuScreen;
    }

    protected void hasExtraFeature(String featureName, boolean featureValue) {
        if (featureValue) {
            System.out.println(featureName + ": Yes");
        }
    }
}
