package sr.unasat.jpa.design.patterns.strategy;

import sr.unasat.jpa.entity.User;
import sr.unasat.jpa.entity.enums.PaymentTypeName;

public class MopeStrategy extends PaymentStrategy {

    public MopeStrategy(User user) {
        super(user, null, null);
        setStrategyName(PaymentTypeName.MOPE);
    }

    @Override
    public PaymentTypeName getStrategyName() {
        return this.strategyName;
    }

    @Override
    public PaymentStrategy paymentSelection() {
        System.out.println(this.PAYMENT_SELECTION + PaymentTypeName.MOPE);
        return this;
    }
}
