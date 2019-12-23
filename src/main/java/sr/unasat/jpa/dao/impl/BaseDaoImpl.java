package sr.unasat.jpa.dao.impl;

import org.jetbrains.annotations.NotNull;
import sr.unasat.jpa.dao.BaseDao;

import javax.persistence.EntityExistsException;
import javax.persistence.EntityManager;
import javax.persistence.EntityTransaction;
import java.util.Collection;
import java.util.List;

public abstract class BaseDaoImpl<E> implements BaseDao<E> {

    protected EntityManager entityManager;

    public BaseDaoImpl(EntityManager entityManager) {
        this.entityManager = entityManager;
    }

    void beginTransaction() {
        EntityTransaction transaction = getTransaction();

        if (transaction.isActive()) {
            //Roll back transaction
            transaction.rollback();
        }

        transaction.begin();
    }

    EntityTransaction getTransaction() {
        return this.entityManager.getTransaction();
    }

    /**
     * @param e entity to save
     */
    @Override
    public void save(E e) throws EntityExistsException {

        if (!alreadyExists(e, findAll())) {
            beginTransaction();
            this.entityManager.persist(e);
            getTransaction().commit();
        } else {
            String msg = String.format("Can not add [%s] to database", e.toString());
            throw new EntityExistsException(msg);
        }

    }

    /**
     * @param collection save a collection of entity class
     * @param <T>        collection type
     */
    @Override
    public <T extends Collection<E>> void saveAll(@NotNull T collection) {
        if (!collection.isEmpty()) collection.forEach(this::save);
    }

    /**
     * @param e entity to update
     * @return updated entity
     */
    @Override
    public E update(@NotNull E e) {
        return this.entityManager.merge(e);
    }

    /**
     *
     * @param e entity to delete
     */
    @Override
    public void delete(E e) {
        this.entityManager.remove(e);
    }

    public List<E> findByName(String name) {
        return null;
    }

    /**
     *
     * @param e entity to be checked
     * @param collection collection of entity class
     * @return collection containing passed entity
     */
    private boolean alreadyExists(E e, List<E> collection) {
        return collection.contains(e);
    }

}
