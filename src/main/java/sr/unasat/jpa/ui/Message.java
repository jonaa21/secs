package sr.unasat.jpa.ui;

import java.util.ArrayList;
import java.util.List;

public class Message {

    static final String WELCOME_MSG = "Welcome to 'Set Eng Computer Sales', 'SECS' for short.\n" +
                                              "\nHere you can build your own personal computer " +
                                              "without even knowing what a computer is.";
    static final String GOOD_BYE = "Thank you for visiting.\nGoodbye!";

    static final String EXIT = "Exit";
    static final String LOGOUT = "0. Log out";
    static final String SAVED = "Saved";
    static final String BACK = "Back";
    static final String USER_NAME = "Username";
    static final String PASSWORD = "Password";
    static final String ENTER_NUMBER = "\nPlease enter a number to continue:";


    static final List<String> HOME_PAGE = new ArrayList<String>() {{
        add("Create account");
        add("Log in");
    }};

    static final List<String> LOGIN_SCREEN = new ArrayList<String>() {{
        add(USER_NAME);

        //TODO: Nice to have
        add(PASSWORD);
    }};

    static final List<String> USER_INFO = new ArrayList<String>() {{
        add("First Name");
        add("Last Name");
        add("ID Number");
        add(USER_NAME);

        //TODO: Nice to have
        add(PASSWORD);
        add(String.format("Retype %s", PASSWORD));
    }};

    static final List<String> MAIN_MENU = new ArrayList<String>() {{
        add("Build your own computer");
        add("Predefined build");
        add("Accessories");
        add("Cart");
        add("User info");
    }};

    static final List<String> BUILD_PC_MENU = new ArrayList<String>() {{
        add("Memory modules");
        add("Drive storage");
        add("CPU");
        add("Graphics");
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
