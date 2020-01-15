package sr.unasat.jpa.design.patterns.strategy;

import sr.unasat.jpa.entity.User;
import sr.unasat.jpa.entity.enums.PaymentTypeName;

import java.time.LocalDate;

public class CreditCardStrategy extends PaymentStrategy {


    public CreditCardStrategy(User user, String cardNumber, LocalDate expirationDate) {
        super(user, cardNumber, expirationDate);
        setStrategyName(PaymentTypeName.CREDIT_CARD);
    }

    @Override
    public PaymentStrategy paymentSelection() {
        System.out.println(this.PAYMENT_SELECTION + PaymentTypeName.CREDIT_CARD);
        return this;
    }

    @Override
    public PaymentTypeName getStrategyName() {
        return this.strategyName;
    }
}
