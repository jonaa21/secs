package sr.unasat.jpa.ui;

import sr.unasat.jpa.design.patterns.decorator.*;
import sr.unasat.jpa.entity.Computer;

public class PredefinedBuildScreen extends MenuScreen {

    public PredefinedBuildScreen() {
        super(Message.PREDEFINED_BUILD_MENU);
    }

    @Override
    public void showMenu() {
        this.showMenuItems(this.getMenu());

        int option = getSelection();
        BasicComputer basicComputer = new BasicComputerImpl();

        switch (option) {
            case 1:
                basicComputer = new HomeComputer(basicComputer);
                break;
            case 2:
                basicComputer = new BusinessComputer(basicComputer);
                break;
            case 3:
                basicComputer = new GamingComputer(basicComputer);
                break;
            case BACK:
                this.goToMenu(this.goBack());
                return;
            default:
                this.showMenuItems(this.getMenu());
                return;
        }

        final Computer computer = basicComputer.decorateComputer();

        this.viewHardwareSpecs(computer.getComputerConfig().getHardwareList());

        MenuScreen menuScreen = this.addToCartMenu(computer);
        this.goToMenu(menuScreen);
    }


}
