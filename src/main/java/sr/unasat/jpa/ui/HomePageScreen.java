package sr.unasat.jpa.ui;

import sr.unasat.jpa.entity.User;

public class HomePageScreen extends MenuScreen {

    private MenuScreen menuScreen = null;

    public HomePageScreen() {
        super(Message.HOME_PAGE);
    }

    @Override
    public void showMenu() {
        System.out.println(Message.SMALL_LOGO);
        System.out.println(Message.WELCOME_MSG);

        this.showMenuItems(this.getMenu());

        int option = this.getSelection();

        switch (option) {
            case 1:
                menuScreen = new CreateAccountScreen();
                break;
            case 2:
                menuScreen = new LoginScreen();
                break;
            default:
                this.showMenuItems(this.getMenu());
                return;
        }

        this.goToMenu(menuScreen);
    }

    private class CreateAccountScreen extends MenuScreen {

        CreateAccountScreen() {
            super(Message.CREATE_ACCOUNT_SCREEN);
        }

        @Override
        public void showMenu() {

            System.out.print(Message.USER_NAME);
            String userName = this.getScanner().next().toLowerCase();

            System.out.print(Message.FIRST_NAME);
            String firstName = this.getScanner().next();

            System.out.print(Message.LAST_NAME);
            String lastName = this.getScanner().next();

            System.out.print(Message.ID_NUMBER);
            String idNumber = this.getScanner().next();

            System.out.print("Buy " + Message.BALANCE.toLowerCase());
            Double balance = this.getScanner().nextDouble();

            if (userName != null && firstName != null && lastName != null && idNumber != null) {
                User user = new User(firstName, lastName, idNumber, balance);
                boolean isSaved = this.controller.getCustomerService().saveCustomer(user, userName);

                HomePageScreen.this.menuScreen = isSaved ? new LoginScreen() : this.goBack();
            } else {
                System.out.println("You have empty fields.\nPlease try again.\n");
                CreateAccountScreen.this.showMenu();
            }
            this.goToMenu(HomePageScreen.this.menuScreen);
        }
    }

    private class LoginScreen extends MenuScreen {
        LoginScreen() {
            super(Message.LOGIN_SCREEN);
        }

        @Override
        public void showMenu() {

            System.out.println("Enter the following to log in\n");
            System.out.print(Message.USER_NAME);
            String userName = this.getScanner().next().toLowerCase();

            boolean loggedIn = this.controller.getCustomerService().loginUser(userName);
            HomePageScreen.this.menuScreen = loggedIn ? new MainMenuScreen() : this.goBack();
            this.goToMenu(HomePageScreen.this.menuScreen);
        }
    }
}
