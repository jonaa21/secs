package sr.unasat.jpa.dao.impl;

import sr.unasat.jpa.dao.ComputerConfigDao;
import sr.unasat.jpa.entity.ComputerConfig;

import javax.persistence.EntityManager;

public class ComputerConfigDaoImpl extends BaseDaoImpl<ComputerConfig> implements ComputerConfigDao {

    public ComputerConfigDaoImpl(EntityManager entityManager) {
        super(entityManager, ComputerConfig.class);
    }

}
