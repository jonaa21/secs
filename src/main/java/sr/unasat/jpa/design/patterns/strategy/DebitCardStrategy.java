package sr.unasat.jpa.design.patterns.strategy;

import sr.unasat.jpa.entity.User;
import sr.unasat.jpa.entity.enums.PaymentTypeName;

import java.time.LocalDate;

public class DebitCardStrategy extends PaymentStrategy {

    public DebitCardStrategy(User user, String cardNumber, LocalDate expirationDate) {
        super(user, cardNumber, expirationDate);
        setStrategyName(PaymentTypeName.DEBIT_CARD);
    }

    @Override
    public PaymentStrategy paymentSelection() {
        System.out.println(this.PAYMENT_SELECTION + PaymentTypeName.DEBIT_CARD);
        return this;
    }

    @Override
    public PaymentTypeName getStrategyName() {
        return this.strategyName;
    }
}
