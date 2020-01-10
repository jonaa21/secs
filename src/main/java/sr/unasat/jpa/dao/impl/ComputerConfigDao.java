package sr.unasat.jpa.dao.impl;

import sr.unasat.jpa.entity.ComputerConfig;

import javax.persistence.EntityManager;

public class ComputerConfigDao extends BaseDaoImpl<ComputerConfig> {

    public ComputerConfigDao(EntityManager entityManager) {
        super(entityManager, ComputerConfig.class);
    }

}
