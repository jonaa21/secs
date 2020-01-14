package sr.unasat.jpa.service.impl;

import sr.unasat.jpa.dao.impl.ComputerConfigDaoImpl;
import sr.unasat.jpa.entity.ComputerConfig;

import javax.persistence.EntityManager;

public class ComputerConfigService extends BaseServiceImpl<ComputerConfigDaoImpl, ComputerConfig> {

    public ComputerConfigService(EntityManager entityManager) {
        super(new ComputerConfigDaoImpl(entityManager));
    }


}
