package sr.unasat.jpa.design.patterns.strategy;

import sr.unasat.jpa.entity.Receipt;
import sr.unasat.jpa.entity.User;
import sr.unasat.jpa.entity.enums.PaymentTypeName;

import java.time.LocalDate;
import java.time.format.DateTimeFormatter;

public abstract class PaymentStrategy {

    private final User user;
    protected PaymentTypeName strategyName;
    private String cardNumber;
    private LocalDate expirationDate;
    final String PAYMENT_SELECTION = "You have selected: ";

    PaymentStrategy(User user, String cardNumber, LocalDate expirationDate) {
        this.user = user;
        this.cardNumber = cardNumber;
        this.expirationDate = expirationDate;
    }

    public void pay(Receipt receipt) throws RuntimeException {
        User user = receipt.getCustomer().getUser();

        if (expirationDate != null && expirationDate.isAfter(LocalDate.now())) {
            DateTimeFormatter formatter = DateTimeFormatter.ofPattern("DD-MM-YYYY");
            throw new RuntimeException(String.format("Unable to make payment with expired card of [%s]", expirationDate.format(formatter)));
        }

        if (user.getBalance() <= 0D || user.getBalance() < receipt.getTotalPrice()) {
            throw new RuntimeException(String.format("User [%1$s %2$s] has insufficient funds to complete transaction",
                    user.getFirstName(), user.getLastName()));
        }
    }

    public abstract PaymentTypeName getStrategyName();

    public abstract PaymentStrategy paymentSelection();

    void setStrategyName(PaymentTypeName name) { this.strategyName = name; };
}
