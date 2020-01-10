package sr.unasat.jpa.dao.impl;

import sr.unasat.jpa.entity.Computer;

import javax.persistence.EntityManager;

public class ComputerDao extends BaseDaoImpl<Computer> {

    public ComputerDao(EntityManager entityManager) {
        super(entityManager, Computer.class);
    }

}
