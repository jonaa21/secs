package sr.unasat.jpa.ui;

public class BuildPcMenu extends MenuFunctionality {

    public BuildPcMenu() {

        this.showMenu(Message.BUILD_PC_MENU);
        this.makeSelection();
    }

    @Override
    void makeSelection() {

        int option = this.getScanner().nextInt();
        MenuFunctionality menu;

        switch (option) {

            case 1:
                menu = new RamMenu();
                break;
            case 2:
                menu = new StorageMenu();
                break;
            case 3:
                menu = new CpuMenu();
                break;
            case 4:
                menu = new GraphicsMenu();
                break;
            case 0:
                //PREVIOUS MENU??
            default:
                this.toMainMenu();
        }
    }

    private class RamMenu extends MenuFunctionality {

        public RamMenu() {
            System.out.println("RAM");
        }

        @Override
        void makeSelection() {

        }
    }

    private class StorageMenu extends MenuFunctionality {

        public StorageMenu() {
            System.out.println("STORAGE");
        }

        @Override
        void makeSelection() {

        }
    }

    private class CpuMenu extends MenuFunctionality {

        public CpuMenu() {
            System.out.println("CPU");
        }

        @Override
        void makeSelection() {

        }
    }

    private class GraphicsMenu extends MenuFunctionality {

        public GraphicsMenu() {

            System.out.println("GRAPHICS");
        }

        @Override
        void makeSelection() {

        }
    }
}
