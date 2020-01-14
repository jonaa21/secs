package sr.unasat.jpa.service.impl;

import sr.unasat.jpa.dao.impl.ComputerDaoImpl;
import sr.unasat.jpa.entity.Computer;

import javax.persistence.EntityManager;

public class ComputerService extends BaseServiceImpl<ComputerDaoImpl, Computer> {

    public ComputerService(EntityManager entityManager) {
        super(new ComputerDaoImpl(entityManager));
    }


}
