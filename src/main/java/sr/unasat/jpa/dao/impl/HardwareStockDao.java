package sr.unasat.jpa.dao.impl;

import sr.unasat.jpa.entity.HardwareStock;

import javax.persistence.EntityManager;

public class HardwareStockDao extends BaseDaoImpl<HardwareStock> {

    public HardwareStockDao(EntityManager entityManager) {
        super(entityManager, HardwareStock.class);
    }


}
