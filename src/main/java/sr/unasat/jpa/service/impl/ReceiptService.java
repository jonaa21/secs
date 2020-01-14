package sr.unasat.jpa.service.impl;

import sr.unasat.jpa.dao.impl.ReceiptDaoImpl;
import sr.unasat.jpa.entity.Receipt;

import javax.persistence.EntityManager;

public class ReceiptService extends BaseServiceImpl<ReceiptDaoImpl, Receipt> {

    public ReceiptService(EntityManager entityManager) {
        super(new ReceiptDaoImpl(entityManager));
    }


}
