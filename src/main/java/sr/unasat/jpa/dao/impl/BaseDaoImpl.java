package sr.unasat.jpa.dao.impl;

import org.jetbrains.annotations.NotNull;
import sr.unasat.jpa.dao.BaseDao;

import javax.persistence.EntityExistsException;
import javax.persistence.EntityManager;
import javax.persistence.EntityTransaction;
import javax.persistence.TypedQuery;
import java.util.Collection;
import java.util.List;

public abstract class BaseDaoImpl<E> implements BaseDao<E> {

    private final static String DEFAULT_FIND_ALL_QUERY = "SELECT e FROM %s e";
    private final static String DEFAULT_FIND_BY_ID = "SELECT e FROM %s e WHERE e.id = :id";

    private final EntityManager entityManager;
    private String findAllQuery;
    private String findByIdQuery;
    private final Class<E> parameterizedType;

    public BaseDaoImpl(EntityManager entityManager, Class<E> parameterizedType) {
        this.entityManager = entityManager;
        this.parameterizedType = parameterizedType;

        findAllQuery = String.format(DEFAULT_FIND_ALL_QUERY, parameterizedType.getCanonicalName());
        findByIdQuery = String.format(DEFAULT_FIND_BY_ID, parameterizedType.getCanonicalName());
    }

    public String getFindAllQuery() {
        return findAllQuery;
    }

    public void setFindAllQuery(String findAllQuery) {
        this.findAllQuery = findAllQuery;
    }

    public String getFindByIdQuery() {
        return findByIdQuery;
    }

    public void setFindByIdQuery(String findByIdQuery) {
        this.findByIdQuery = findByIdQuery;
    }

    void beginTransaction() {
        EntityTransaction transaction = getTransaction();

        if (transaction.isActive()) {
            //Roll back transaction
            transaction.rollback();
        }

        transaction.begin();
    }

    public TypedQuery<E> createQuery(String query) {
        return this.entityManager.createQuery(query, parameterizedType);
    }

    private EntityTransaction getTransaction() {
        return this.entityManager.getTransaction();
    }

    /**
     *
     * @return list of all records from specified class
     */
    @Override
    public List<E> findAll() {
        this.beginTransaction();
        TypedQuery<E> query = this.entityManager.createQuery(findAllQuery, parameterizedType);
        List<E> resultList = query.getResultList();
        this.getTransaction().commit();
        return resultList;
    }

    /**
     *
     * @param id entity id in specified class
     * @return result
     */
    @Override
    public E findById(Long id) {
        this.beginTransaction();
        TypedQuery<E> query = this.entityManager.createQuery(findByIdQuery, parameterizedType);
        query.setParameter("id", id);
        E result = query.getSingleResult();
        this.getTransaction().commit();
        return result;
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
