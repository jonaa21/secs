package sr.unasat.jpa.dao.impl;

import sr.unasat.jpa.dao.HardwareDao;
import sr.unasat.jpa.entity.Hardware;

import javax.persistence.EntityManager;

public class HardwareDaoImpl extends BaseDaoImpl<Hardware> implements HardwareDao {

    public HardwareDaoImpl(EntityManager entityManager) {
        super(entityManager, Hardware.class);
    }

}
