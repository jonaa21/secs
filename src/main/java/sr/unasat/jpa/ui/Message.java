package sr.unasat.jpa.ui;

import java.util.ArrayList;
import java.util.List;

public class Message {

    static final String INVALID_ENTRY = "Invalid entry.\nPlease try again";
    static final String WELCOME_MSG = "Welcome to 'Set Eng Computer Sales', 'SECS' for short, %1$s %2$s [%3$s].\n" +
                                              "\nHere you can build your own personal computer " +
                                              "without even knowing what a computer is.\n";
    static final String GOOD_BYE = "\nThank you for visiting.\nGoodbye!";

    static final String YES_NO_OPTION = "\nPress '1' for 'Yes' and '0' for 'No'.";
    static final String AMOUNT = "Enter amount: ";
    static final String EXIT = "Exit";
    static final String LOGOUT = "0. Log out";
    static final String SAVED = "Saved";
    static final String EDIT = "Edit";
    static final String DELETE = "Delete";
    static final String VIEW = "View";
    static final String BACK = "0. Back";
    static final String USER_NAME = "Username: ";
    static final String FIRST_NAME = "First name: ";
    static final String LAST_NAME = "Last name: ";
    static final String ID_NUMBER = "ID number: ";
    static final String BALANCE = "Balance: ";
    static final String WELCOME_MENU_MSG = "\n****Welcome to the %s menu****\n";
    static final String ENTER_NUMBER = "\nPlease enter a number to continue: ";
    public static final String NOT_FOUND = "[%s] not found.\nPlease try again.\n";
    public static final String NO_RESULT_FOUND = "Could not find result.\nPlease try again.\n";
    public static final String UNEXPECTED_ERROR = "\nAn unexpected error occurred\n";
    static final String ADDED_TO_CONFIG = "\nAdded to configuration!\n";
    static final String CONFIG_BUILD_SUCCESS = "\nSuccessfully build the configuration!\n";
    static final String ADD_TO_CART = "Add to cart";
    static final String ADD_TO_CART_SUCCESS = "\nSuccessfully added to cart\n";
    static final String BLUETOOTH = "Bluetooth";
    static final String THUNDERBOLT = "Thunderbolt";
    static final String LTE = "LTE";
    static final String TWO_IN_ONE = "Two In One";
    static final String TOUCH_SCREEN = "Touch Screen";
    static final String EXTRA_FEATURES = "\nExtra features";


    static final List<String> HOME_PAGE = new ArrayList<String>() {{
        add("Create account");
        add("Log in");
    }};

    static final List<String> CREATE_ACCOUNT_SCREEN = new ArrayList<String>() {{
        add("Create account");
    }};

    static final List<String> LOGIN_SCREEN = new ArrayList<String>() {{
        add(USER_NAME);

        //TODO: Nice to have
//        add(PASSWORD);
    }};

    static final List<String> USER_INFO = new ArrayList<String>() {{
        add(FIRST_NAME);
        add(LAST_NAME);
        add(ID_NUMBER);
        add(USER_NAME);

        //TODO: Nice to have
//        add(PASSWORD);
//        add(String.format("Retype %s", PASSWORD));
    }};

    static final List<String> MAIN_MENU = new ArrayList<String>() {{
        add("Build your own computer");
        add("Predefined build");
        add("Accessories");
        add("Cart");
        add("User info");
    }};
    static final List<String> ADMIN_SCREEN = new ArrayList<String>() {{
        add("User Management");
    }};

    static final List<String> BUILD_PC_MENU = new ArrayList<String>() {{
        add("Memory modules");
        add("Drive storage");
        add("CPU");
        add("Graphics");
        add("Extra features");
        add("Build the configuration");
        add(ADD_TO_CART);
    }};

    static final List<String> PREDEFINED_BUILD_MENU = new ArrayList<String>() {{
        add("Home computer");
        add("Business computer");
        add("Gaming computer");
    }};

    static final List<String> ACCESSORIES_MENU = new ArrayList<String>() {{
        add("Mouse");
        add("Keyboard");
    }};

    static final List<String> CART_MENU = new ArrayList<String>() {{
        add("View cart");
        add("Edit cart");
    }};

    static final List<String> IN_MENU_OPTIONS = new ArrayList<String>() {{
       add(EDIT);
    }};

    static final List<String> ADD_TO_CART_PROMPT_SCREEN = new ArrayList<String>() {{
        add(ADD_TO_CART);
    }};


    private static final List<String> BASIC_MENU_HARDWARE_OPTIONS = new ArrayList<String>() {{
        add("View all");
        add("Search by brand");
    }};

    static List<String> RAM_MENU = BASIC_MENU_HARDWARE_OPTIONS;
    static List<String> STORAGE_MENU = BASIC_MENU_HARDWARE_OPTIONS;
    static List<String> CPU_MENU = BASIC_MENU_HARDWARE_OPTIONS;
    static List<String> GRAPHICS_MENU = BASIC_MENU_HARDWARE_OPTIONS;
    static List<String> EXTRA_FEATURE_MENU = new ArrayList<String>() {{
        add("Bluetooth");
        add("LTE");
        add("Touch Screen");
        add("Two In One");
        add("ThunderBolt");
    }};


    public static final String SECS_LOGO = "\n" +
                                            "   SSSSSSSSSSSSSSS EEEEEEEEEEEEEEEEEEEEEE       CCCCCCCCCCCCC   SSSSSSSSSSSSSSS \n" +
                                            " SS:::::::::::::::SE::::::::::::::::::::E    CCC::::::::::::C SS:::::::::::::::S\n" +
                                            "S:::::SSSSSS::::::SE::::::::::::::::::::E  CC:::::::::::::::CS:::::SSSSSS::::::S\n" +
                                            "S:::::S     SSSSSSSEE::::::EEEEEEEEE::::E C:::::CCCCCCCC::::CS:::::S     SSSSSSS\n" +
                                            "S:::::S              E:::::E       EEEEEEC:::::C       CCCCCCS:::::S            \n" +
                                            "S:::::S              E:::::E            C:::::C              S:::::S            \n" +
                                            " S::::SSSS           E::::::EEEEEEEEEE  C:::::C               S::::SSSS         \n" +
                                            "  SS::::::SSSSS      E:::::::::::::::E  C:::::C                SS::::::SSSSS    \n" +
                                            "    SSS::::::::SS    E:::::::::::::::E  C:::::C                  SSS::::::::SS  \n" +
                                            "       SSSSSS::::S   E::::::EEEEEEEEEE  C:::::C                     SSSSSS::::S \n" +
                                            "            S:::::S  E:::::E            C:::::C                          S:::::S\n" +
                                            "            S:::::S  E:::::E       EEEEEEC:::::C       CCCCCC            S:::::S\n" +
                                            "SSSSSSS     S:::::SEE::::::EEEEEEEE:::::E C:::::CCCCCCCC::::CSSSSSSS     S:::::S\n" +
                                            "S::::::SSSSSS:::::SE::::::::::::::::::::E  CC:::::::::::::::CS::::::SSSSSS:::::S\n" +
                                            "S:::::::::::::::SS E::::::::::::::::::::E    CCC::::::::::::CS:::::::::::::::SS \n" +
                                            " SSSSSSSSSSSSSSS   EEEEEEEEEEEEEEEEEEEEEE       CCCCCCCCCCCCC SSSSSSSSSSSSSSS   \n" +
                                            "                                                                                \n";

    public static final String SMALL_LOGO = "\n" +
                                                    " ######  ########  ######   ######  \n" +
                                                    "##    ## ##       ##    ## ##    ## \n" +
                                                    "##       ##       ##       ##       \n" +
                                                    " ######  ######   ##        ######  \n" +
                                                    "      ## ##       ##             ## \n" +
                                                    "##    ## ##       ##    ## ##    ## \n" +
                                                    " ######  ########  ######   ######  \n";
}
