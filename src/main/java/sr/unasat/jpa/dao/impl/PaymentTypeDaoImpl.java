package sr.unasat.jpa.dao.impl;

import sr.unasat.jpa.dao.PaymentTypeDao;
import sr.unasat.jpa.entity.PaymentType;

import javax.persistence.EntityManager;

public class PaymentTypeDaoImpl extends BaseDaoImpl<PaymentType> implements PaymentTypeDao {

    public PaymentTypeDaoImpl(EntityManager entityManager) {
        super(entityManager, PaymentType.class);
    }

}
