package sr.unasat.jpa.design.patterns.strategy;

import sr.unasat.jpa.entity.User;
import sr.unasat.jpa.entity.enums.PaymentTypeName;

public class PayPalStrategy extends PaymentStrategy {

    public PayPalStrategy(User user, String cardNumber) {
        super(user, cardNumber, null);
        setStrategyName(PaymentTypeName.PAY_PAL);
    }

    @Override
    public PaymentTypeName getStrategyName() {
        return strategyName;
    }

    @Override
    public PaymentStrategy paymentSelection() {
        System.out.println(this.PAYMENT_SELECTION + PaymentTypeName.PAY_PAL);
        return this;
    }


}
