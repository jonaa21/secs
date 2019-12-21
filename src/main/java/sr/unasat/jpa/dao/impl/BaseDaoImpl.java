package sr.unasat.jpa.dao.impl;

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

        if (!transaction.isActive()) {
            transaction.begin();
        } else {
            transaction.rollback();
            beginTransaction();
        }
    }

    EntityTransaction getTransaction() {
        return this.entityManager.getTransaction();
    }

}
