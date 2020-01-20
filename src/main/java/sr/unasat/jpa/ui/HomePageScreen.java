package sr.unasat.jpa.ui;

import sr.unasat.jpa.entity.User;

public class HomePageScreen extends MenuScreen {

    public HomePageScreen() {
        super(Message.HOME_PAGE);
        System.out.println(Message.SMALL_LOGO);
        System.out.println(Message.WELCOME_MSG);
    }

    @Override
    public void showMenu() {
        this.showMenuItems(this.getMenu());

        MenuScreen menuScreen = null;
        int option = this.getSelection();

        switch (option) {
            case 1:
                menuScreen = new CreateAccountScreen();
                break;
            case 2:
                menuScreen = new LoginScreen();
                break;
            default:
                this.showMenu();
                break;
        }

        this.goToMenu(menuScreen);
    }

    private class CreateAccountScreen extends MenuScreen {

        CreateAccountScreen() {
            super(Message.CREATE_ACCOUNT_SCREEN);
        }

        @Override
        public void showMenu() {

            System.out.print("Username: ");
            String userName = this.getScanner().next();

            System.out.print("First name: ");
            String firstName = this.getScanner().next();

            System.out.println("Last name: ");
            String lastName = this.getScanner().next();

            System.out.println("ID number: ");
            String idNumber = this.getScanner().next();

            System.out.println("Buy balance: ");
            Double balance = this.getScanner().nextDouble();

            if (userName != null && firstName != null && lastName != null && idNumber != null) {
                User user = new User(firstName, lastName, idNumber, balance);
                this.controller.getCustomerService().saveCustomer(user, userName);
            } else {
                System.out.println("You have empty fields.\nPlease try again.\n");
                CreateAccountScreen.this.showMenu();
            }

        }
    }

    private class LoginScreen extends MenuScreen {
        LoginScreen() {
            super(Message.LOGIN_SCREEN);
        }

        @Override
        public void showMenu() {

            System.out.println("Enter the following to log in\n");
            System.out.print(Message.USER_NAME + ": ");
            String userName = this.getScanner().next();

            boolean loggedIn = this.controller.getCustomerService().loginUser(userName);
            MenuScreen menuScreen = loggedIn ? new MainMenuScreen() : this.goBack();
            this.goToMenu(menuScreen);
        }
    }
}
