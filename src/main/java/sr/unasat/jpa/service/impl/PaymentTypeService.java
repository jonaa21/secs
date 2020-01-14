package sr.unasat.jpa.service.impl;

import sr.unasat.jpa.dao.impl.PaymentTypeDaoImpl;
import sr.unasat.jpa.entity.PaymentType;

import javax.persistence.EntityManager;

public class PaymentTypeService extends BaseServiceImpl<PaymentTypeDaoImpl, PaymentType> {

    public PaymentTypeService(EntityManager entityManager) {
        super(new PaymentTypeDaoImpl(entityManager));
    }


}
