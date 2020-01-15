package sr.unasat.jpa.service.impl;

import sr.unasat.jpa.dao.HardwareDao;
import sr.unasat.jpa.dao.impl.HardwareDaoImpl;
import sr.unasat.jpa.entity.Hardware;

import javax.persistence.EntityManager;

public class HardwareService extends BaseServiceImpl<HardwareDao, Hardware> {

    public HardwareService(EntityManager entityManager) {
        super(new HardwareDaoImpl(entityManager));
    }


}
