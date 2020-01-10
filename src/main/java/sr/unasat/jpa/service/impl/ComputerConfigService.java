package sr.unasat.jpa.service.impl;

import sr.unasat.jpa.dao.impl.ComputerConfigDao;
import sr.unasat.jpa.entity.ComputerConfig;

import javax.persistence.EntityManager;

public class ComputerConfigService extends BaseServiceImpl<ComputerConfigDao, ComputerConfig> {

    public ComputerConfigService(EntityManager entityManager) {
        super(new ComputerConfigDao(entityManager));
    }


}
