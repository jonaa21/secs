package sr.unasat.jpa.ui;

import sr.unasat.jpa.entity.Customer;
import sr.unasat.jpa.entity.User;
import sr.unasat.jpa.service.impl.CustomerService;

import java.util.ArrayList;

public class UserInfoScreen extends MenuScreen {

    private CustomerService customerService = controller.getCustomerService();
    private MenuScreen menuScreen = null;

    UserInfoScreen() {
        super(Message.USER_INFO);
    }

    @Override
    public void showMenu() {

        showUserInfo();
        int option = this.getSelection();

        switch (option) {
            case 1:
                menuScreen = new EditInfoScreen();
                break;
            case BACK:
                menuScreen = this.goBack();
                break;
            default:
                this.showMenuItems(this.getMenu());
                return;
        }

        this.goToMenu(menuScreen);
    }

    private void showUserInfo() {
        Customer customer = this.getLoggedInCustomer();

        System.out.println(Message.USER_NAME + customer.getUserName());
        System.out.println(Message.FIRST_NAME + customer.getUser().getFirstName());
        System.out.println(Message.LAST_NAME + customer.getUser().getLastName());
        System.out.println(Message.ID_NUMBER + customer.getUser().getIdNumber());
        System.out.println(Message.BALANCE + customer.getUser().getBalance());
        System.out.println("1. " + Message.EDIT);
        System.out.println(Message.BACK);
        System.out.print(Message.ENTER_NUMBER);
    }

    private class EditInfoScreen extends MenuScreen {

        EditInfoScreen() {
            super(new ArrayList<>());
        }

        @Override
        public void showMenu() {
            Customer loggedInCustomer = this.getLoggedInCustomer();
            User user = loggedInCustomer.getUser();
            System.out.println("Press '0' to skip\n");
            System.out.print("\nOld username: " + loggedInCustomer.getUserName() + "\nNew username: ");
            String userName = this.getScanner().next();

            System.out.print("\nCurrent balance: " + user.getBalance() + "\nBuy balance: ");
            Double balance = this.getScanner().nextDouble();

            boolean canUpdate = false;

            if (!userName.equalsIgnoreCase("0") && !loggedInCustomer.getUserName().equalsIgnoreCase(userName)) {
                loggedInCustomer.setUserName(userName);
                canUpdate = true;
            }

            if (balance > 0) {
                user.setBalance(user.getBalance() + balance);
                canUpdate = true;
            }

            if (canUpdate) {
                Customer update = customerService.update(loggedInCustomer);
                customerService.loginUser(update.getUserName());

                if (getLoggedInCustomer() != null) {
                    System.out.println(Message.SAVED);
                    this.goToMenu(this.goToMainMenu());
                }
                System.out.println(Message.INVALID_ENTRY);
                this.showMenu();
            }
        }
    }
}
