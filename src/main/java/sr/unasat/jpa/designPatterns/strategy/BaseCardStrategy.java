package sr.unasat.jpa.designPatterns.strategy;

import sr.unasat.jpa.entity.PaymentType;
import sr.unasat.jpa.entity.Receipt;
import sr.unasat.jpa.entity.User;
import sr.unasat.jpa.entity.enums.PaymentTypeName;

import java.time.LocalDate;

public abstract class BaseCardStrategy implements PaymentStrategy {

    private String cardHolderFirstName;
    private String cardHolderLastName;
    private String cardNumber;
    private LocalDate expirationDate;

    public BaseCardStrategy(User user, String cardNumber, LocalDate expirationDate) {
        this.cardHolderFirstName = user.getFirstName();
        this.cardHolderLastName = user.getLastName();
        this.cardNumber = cardNumber;
        this.expirationDate = expirationDate;
    }

    @Override
    public void pay(Receipt receipt) throws RuntimeException {
        PaymentType paymentType = receipt.getPaymentType();
        User user = receipt.getCustomer().getUser();
        paymentSelection(paymentType.getName());
        if (user.getBalance() <= 0D || user.getBalance() < receipt.getTotalPrice()) {
            throw new RuntimeException(String.format("User [$f $l] has insufficient funds to complete transaction",
                    user.getFirstName(), user.getLastName()));
        }
    }

    private void paymentSelection(PaymentTypeName paymentTypeName) {
        System.out.println("You have selected: " + paymentTypeName.name());
    }
}
