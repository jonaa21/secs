package sr.unasat.jpa.dao.impl;

import sr.unasat.jpa.entity.Hardware;

import javax.persistence.EntityManager;

public class HardwareDao extends BaseDaoImpl<Hardware> {

    public HardwareDao(EntityManager entityManager) {
        super(entityManager, Hardware.class);
    }

}
