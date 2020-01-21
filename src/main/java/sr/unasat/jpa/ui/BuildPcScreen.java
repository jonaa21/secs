package sr.unasat.jpa.ui;

import sr.unasat.jpa.design.patterns.builder.Builder;
import sr.unasat.jpa.design.patterns.builder.ComputerBuilder;
import sr.unasat.jpa.entity.*;
import sr.unasat.jpa.entity.enums.CategoryName;
import sr.unasat.jpa.service.impl.HardwareStockService;

import java.util.List;

import static sr.unasat.jpa.entity.enums.CategoryName.*;

public class BuildPcScreen extends MenuScreen {

    private Builder builder = new ComputerBuilder();
    private ComputerConfig config;

    public BuildPcScreen() {
        super(Message.BUILD_PC_MENU);
    }

    @Override
    public void showMenu() {
        this.showMenuItems(this.getMenu());

        int option = getSelection();
        MenuScreen menuScreen = null;

        switch (option) {
            case 1:
                menuScreen = new InnerMenuScreen(RAM, Message.RAM_MENU);
                break;
            case 2:
                menuScreen = new InnerMenuScreen(STORAGE, Message.STORAGE_MENU);
                break;
            case 3:
                menuScreen = new InnerMenuScreen(CPU, Message.CPU_MENU);
                break;
            case 4:
                menuScreen = new InnerMenuScreen(GPU, Message.GRAPHICS_MENU);
                break;
            case 5:
                menuScreen = new InnerMenuScreen(EXTRA_FEATURES, Message.EXTRA_FEATURE_MENU);
                break;
            case 6:
                config = this.builder.build();
                menuScreen = this.goBack();
                //TODO FINISH THIS
                break;
            case 7:
                addToCart();
            case BACK:
                menuScreen = goBack();
                break;
            default:
                this.showMenuItems(this.getMenu());
                return;
        }

        if (menuScreen != null && menuScreen.getMenu().containsAll(Message.EXTRA_FEATURE_MENU)) {
            addExtraFeatures();
        }
        this.goToMenu(menuScreen);
    }

    private void addToCart() {
        if (config != null) {
            Computer computer = new Computer();
            computer.setComputerConfig(this.config);

        }
    }

    private void addExtraFeatures() {
        System.out.println(Message.YES_NO_OPTION);

        System.out.print("Add bluetooth: ");
        boolean bluetooth = this.getBoolean();

        System.out.print("Add LTE: ");
        boolean lte = getBoolean();

        System.out.print("Add Thunderbolt: ");
        boolean thunderbolt = getBoolean();

        System.out.print("Add Touch Screen: ");
        boolean touchScreen = getBoolean();

        System.out.print("Add Two In One: ");
        boolean twoInOne = getBoolean();

        builder.withBluetooth(bluetooth)
                .withLte(lte)
                .withTouchScreen(touchScreen)
                .withTwoInOne(twoInOne)
                .withThunderbolt(thunderbolt);

        this.showMenu();
    }

    private void buildComputer(HardwareStock stock, CategoryName categoryName) {

        System.out.print(Message.AMOUNT);
        Hardware hardware = new Hardware(stock, this.getSelection());

        try {
            switch (categoryName) {
                case RAM:
                    BuildPcScreen.this.builder.setMemory(hardware);
                    break;
                case CPU:
                    BuildPcScreen.this.builder.setCpu(hardware);
                    break;
                case GPU:
                    BuildPcScreen.this.builder.setGpu(hardware);
                    break;
                case STORAGE:
                    BuildPcScreen.this.builder.setStorage(hardware);
                    break;
            }
            System.out.println("\nAdded to configuration!\n");
            MenuScreen.menuStack.pop();
            this.goToMenu(MenuScreen.menuStack.peek());
        } catch (RuntimeException e) {
            System.out.println(e.getMessage());
            this.goBack().showMenu();
        }
    }

    private class InnerMenuScreen extends MenuScreen {

        private CategoryName categoryName;

        InnerMenuScreen(CategoryName categoryName, List<String> menu) {
            super(menu);
            this.categoryName = categoryName;
        }

        @Override
        public void showMenu() {
            this.showMenuItems(InnerMenuScreen.this.getMenu());

            int option = getSelection();
            HardwareStockService hardwareStockService = controller.getHardwareStockService();
            List<HardwareStock> stocks = null;

            switch (option) {
                case 1:
                    stocks = hardwareStockService.findAllStockByCategory(this.categoryName);
                    break;
                case 2:
                    List<Brand> brands = controller.getBrandService().findBrandsByCategoryName(this.categoryName);
                    this.showMenuItems(brands, Brand.class);
                    option = getSelection();
                    stocks = hardwareStockService.findAllStockByCategoryAndBrandId(categoryName, (long) option);
                    break;
                case BACK:
                    goBack().showMenu();
                    return;
                default:
                    InnerMenuScreen.this.showMenuItems(InnerMenuScreen.this.getMenu());
                    return;
            }

            if (stocks != null && !stocks.isEmpty()) {
                this.showMenuItems(stocks, HardwareStock.class);
                option = getSelection();

                if (option == BACK) {
                    goBack().showMenu();
                }
                HardwareStock hardwareStock = hardwareStockService.findById((long) option);

                BuildPcScreen.this.buildComputer(hardwareStock, this.categoryName);
            } else {
                System.out.println(String.format(Message.NOT_FOUND, "Results"));
                MenuScreen.menuStack.pop();
                this.goToMenu(InnerMenuScreen.this);
            }
        }
    }
}
