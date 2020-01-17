package sr.unasat.jpa.ui;

public class MainMenu extends MenuFunctionality {

    public MainMenu() {

        startMainMenu();
        this.makeSelection();
    }

    private void startMainMenu() {

        this.showMenu(Message.MAIN_MENU);
    }

    @Override
    void makeSelection() {

        int option = this.getScanner().nextInt();

        switch (option) {
            case 1:
                //BUILD PC
                break;
            case 2:
                //PREDEFINED BUILD
                break;
            case 3:
                //ACCESSORIES
                break;
            case 4:
                //CART
                break;
            case 5:
                //USER INFO
                break;
            case 0:

        }
    }
}
