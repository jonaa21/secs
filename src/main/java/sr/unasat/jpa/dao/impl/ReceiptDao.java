package sr.unasat.jpa.dao.impl;

import sr.unasat.jpa.entity.Receipt;

import javax.persistence.EntityManager;

public class ReceiptDao extends BaseDaoImpl<Receipt> {

    public ReceiptDao(EntityManager entityManager) {
        super(entityManager, Receipt.class);
    }

}
