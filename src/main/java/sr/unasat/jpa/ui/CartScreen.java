package sr.unasat.jpa.ui;

import sr.unasat.jpa.entity.Computer;
import sr.unasat.jpa.entity.ComputerConfig;

public class CartScreen extends MenuScreen {

    public CartScreen() {
        super(Message.CART_MENU);
    }

    @Override
    public void showMenu() {
        int i = 1;
        ComputerConfig config = null;

        for (Computer computer : cart) {
            config = computer.getComputerConfig();
            System.out.print("Item no. " + i);
            this.viewHardwareSpecs(config.getHardwareList());
            System.out.println(Message.EXTRA_FEATURES);
            this.hasExtraFeature(Message.BLUETOOTH, config.isBluetooth());
            this.hasExtraFeature(Message.THUNDERBOLT, config.isThunderbolt());
            this.hasExtraFeature(Message.LTE, config.isLte());
            this.hasExtraFeature(Message.TOUCH_SCREEN, config.isTouchScreen());
            this.hasExtraFeature(Message.TWO_IN_ONE, config.isTwoInOne());
            System.out.println("***********");

            i++;
        }

        if (config == null) {
            System.out.println("No items in cart");
        }

        System.out.print("Enter '0' to go back: ");
        if (getSelection() == 0) {
            this.goToMainMenu().showMenu();
        } else {
            System.out.println(Message.INVALID_ENTRY);
            this.showMenu();
        }
    }

}
