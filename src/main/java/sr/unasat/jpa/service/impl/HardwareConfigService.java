package sr.unasat.jpa.service.impl;

import sr.unasat.jpa.dao.impl.HardwareConfigDao;
import sr.unasat.jpa.entity.HardwareConfig;

import javax.persistence.EntityManager;

public class HardwareConfigService extends BaseServiceImpl<HardwareConfigDao, HardwareConfig> {

    public HardwareConfigService(EntityManager entityManager) {
        super(new HardwareConfigDao(entityManager));
    }


}
