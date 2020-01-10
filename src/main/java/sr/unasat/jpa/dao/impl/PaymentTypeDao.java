package sr.unasat.jpa.dao.impl;

import sr.unasat.jpa.entity.PaymentType;

import javax.persistence.EntityManager;

public class PaymentTypeDao extends BaseDaoImpl<PaymentType> {

    public PaymentTypeDao(EntityManager entityManager) {
        super(entityManager, PaymentType.class);
    }

}
