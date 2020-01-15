package sr.unasat.jpa.service.impl;

import sr.unasat.jpa.dao.PaymentTypeDao;
import sr.unasat.jpa.dao.impl.PaymentTypeDaoImpl;
import sr.unasat.jpa.design.patterns.strategy.*;
import sr.unasat.jpa.entity.PaymentType;
import sr.unasat.jpa.entity.User;

import javax.persistence.EntityManager;
import java.time.LocalDate;

public class PaymentTypeService extends BaseServiceImpl<PaymentTypeDao, PaymentType> {

    private PaymentTypeDao paymentTypeDao;

    public PaymentTypeService(EntityManager entityManager) {
        super(new PaymentTypeDaoImpl(entityManager));

        paymentTypeDao = this.getDao();
    }

    public PaymentStrategy getPaymentStrategy(Long id, User user, String cardNumber, LocalDate expirationDate) {

        PaymentType paymentType = super.findById(id);

        switch (paymentType.getName()) {
            case CREDIT_CARD:
                return new CreditCardStrategy(user, cardNumber, expirationDate).paymentSelection();
            case DEBIT_CARD:
                return new DebitCardStrategy(user, cardNumber, expirationDate).paymentSelection();
            case MOPE:
                return new MopeStrategy(user).paymentSelection();
            case PAY_PAL:
                return new PayPalStrategy(user, cardNumber).paymentSelection();
            default:
                return null;
        }
    }

//    public PaymentType findPaymentByStrategy(PaymentStrategy strategy) {
//        return paymentTypeDao.findByName(strategy.getStrategyName(), "paymentType");
//    }
}
