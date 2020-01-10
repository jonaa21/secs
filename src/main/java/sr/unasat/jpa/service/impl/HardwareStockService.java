package sr.unasat.jpa.service.impl;

import sr.unasat.jpa.dao.impl.HardwareStockDao;
import sr.unasat.jpa.entity.HardwareStock;

import javax.persistence.EntityManager;

public class HardwareStockService extends BaseServiceImpl<HardwareStockDao, HardwareStock> {

    public HardwareStockService(EntityManager entityManager) {
        super(new HardwareStockDao(entityManager));
    }


}
