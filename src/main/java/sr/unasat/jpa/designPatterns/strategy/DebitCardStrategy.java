package sr.unasat.jpa.designPatterns.strategy;

import sr.unasat.jpa.entity.Receipt;
import sr.unasat.jpa.entity.User;

import java.time.LocalDate;

public class DebitCardStrategy extends BaseCardStrategy {

    public DebitCardStrategy(User user, String cardNumber, LocalDate expirationDate) {
        super(user, cardNumber, expirationDate);
    }

    public void pay(Receipt receipt) throws RuntimeException {
        super.pay(receipt);
    }
}
