package sr.unasat.jpa.dao.impl;

import sr.unasat.jpa.dao.ComputerDao;
import sr.unasat.jpa.entity.Computer;

import javax.persistence.EntityManager;

public class ComputerDaoImpl extends BaseDaoImpl<Computer> implements ComputerDao {

    public ComputerDaoImpl(EntityManager entityManager) {
        super(entityManager, Computer.class);
    }

}
