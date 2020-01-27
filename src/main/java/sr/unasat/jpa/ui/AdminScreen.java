package sr.unasat.jpa.ui;

public class AdminScreen extends MenuScreen {
    //TODO
    AdminScreen() {
        super(Message.ADMIN_SCREEN);
    }

    @Override
    public void showMenu() {
        this.showMenuItems(this.getMenu());
    }
}
