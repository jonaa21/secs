package sr.unasat.jpa.service.impl;

import sr.unasat.jpa.dao.ComputerDao;
import sr.unasat.jpa.dao.impl.ComputerDaoImpl;
import sr.unasat.jpa.entity.Computer;

import javax.persistence.EntityManager;

public class ComputerService extends BaseServiceImpl<ComputerDao, Computer> {

    public ComputerService(EntityManager entityManager) {
        super(new ComputerDaoImpl(entityManager));
    }


}
