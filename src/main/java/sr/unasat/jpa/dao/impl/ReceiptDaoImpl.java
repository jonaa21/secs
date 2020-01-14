package sr.unasat.jpa.dao.impl;

import sr.unasat.jpa.dao.ReceiptDao;
import sr.unasat.jpa.entity.Receipt;

import javax.persistence.EntityManager;

public class ReceiptDaoImpl extends BaseDaoImpl<Receipt> implements ReceiptDao {

    public ReceiptDaoImpl(EntityManager entityManager) {
        super(entityManager, Receipt.class);
    }

}
