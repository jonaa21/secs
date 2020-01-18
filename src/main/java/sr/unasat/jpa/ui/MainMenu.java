package sr.unasat.jpa.ui;

public class MainMenu extends MenuFunctionality {

    public MainMenu() {

        startMainMenu();
        this.makeSelection();
    }

    private void startMainMenu() {

        this.toMainMenu();
    }

    @Override
    void makeSelection() {

        int option = this.getScanner().nextInt();

        MenuFunctionality menu;
        switch (option) {
            case 1:
                //BUILD PC
                menu = new BuildPcMenu();
                break;
            case 2:
                //PREDEFINED BUILD
//                menu = new PredefinedPcMenu();
                break;
            case 3:
                //ACCESSORIES
//                menu = new AccessoriesMenu();
                break;
            case 4:
                //CART
//                menu = new CartMenu();
                break;
            case 5:
                //USER INFO
//                menu = new UserInfoMenu();
                break;
            case 0:
                System.out.println(Message.GOOD_BYE);
                System.exit(0);
        }
    }
}
