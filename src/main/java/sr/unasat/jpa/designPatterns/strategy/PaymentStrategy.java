package sr.unasat.jpa.designPatterns.strategy;

import sr.unasat.jpa.entity.Receipt;

public interface PaymentStrategy {

    void pay(Receipt receipt) throws RuntimeException;

}
