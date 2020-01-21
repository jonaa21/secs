package sr.unasat.jpa.ui;

import sr.unasat.jpa.entity.User;

public class MainMenuScreen extends MenuScreen {

    public MainMenuScreen() {
        super(Message.MAIN_MENU);

        User user = this.getLoggedInCustomer().getUser();
        String msg = String.format(Message.WELCOME_MSG, user.getFirstName(),
                user.getLastName(), this.getLoggedInCustomer().getUserName());

        System.out.println(msg);
    }

    @Override
    public void showMenu() {
        this.showMenuItems(this.getMenu());

        MenuScreen menuScreen = null;
        int option = getSelection();

        switch (option) {
            case 1:
                menuScreen = new BuildPcScreen();
                break;
            case 2:
                menuScreen = new PredefinedBuildScreen();
                break;
            case 3:
                menuScreen = new AccessoriesScreen();
                break;
            case 4:
                menuScreen = new CartScreen();
                break;
            case 5:
                menuScreen = new UserInfoScreen();
                break;
            case BACK:
                System.out.println(Message.GOOD_BYE);
                System.exit(0);
            default:
                this.showMenuItems(this.getMenu());
                return;
        }
        this.goToMenu(menuScreen);
    }


}
