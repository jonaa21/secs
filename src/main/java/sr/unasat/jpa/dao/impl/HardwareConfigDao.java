package sr.unasat.jpa.dao.impl;

import sr.unasat.jpa.entity.HardwareConfig;

import javax.persistence.EntityManager;

public class HardwareConfigDao extends BaseDaoImpl<HardwareConfig> {

    public HardwareConfigDao(EntityManager entityManager) {
        super(entityManager, HardwareConfig.class);
    }

}
