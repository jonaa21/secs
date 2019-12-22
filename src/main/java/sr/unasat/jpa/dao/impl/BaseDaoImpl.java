package sr.unasat.jpa.dao.impl;

import sr.unasat.jpa.config.JPAConfiguration;
import sr.unasat.jpa.dao.BaseDao;

import javax.persistence.EntityManager;
import javax.persistence.EntityTransaction;

abstract class BaseDaoImpl<E> implements BaseDao<E> {

    protected EntityManager entityManager;

    public BaseDaoImpl(EntityManager entityManager) {
        this.entityManager = entityManager;
    }

    void beginTransaction() {
        EntityTransaction transaction = this.entityManager.getTransaction();

        if (transaction.isActive()) {
            //Roll back transaction
            transaction.rollback();

            //Restart the connection
            this.entityManager.close();
            this.entityManager = JPAConfiguration.getEntityManager();
            beginTransaction();
        }

        transaction.begin();
    }

    EntityTransaction getTransaction() {
        return this.entityManager.getTransaction();
    }

}
