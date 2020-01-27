package sr.unasat.jpa.dao.impl;

import org.jetbrains.annotations.NotNull;
import sr.unasat.jpa.dao.BaseDao;
import sr.unasat.jpa.dao.impl.procedures.MySqlProcedures;

import javax.persistence.EntityExistsException;
import javax.persistence.EntityManager;
import javax.persistence.EntityTransaction;
import javax.persistence.TypedQuery;
import java.util.*;
import java.util.function.Function;
import java.util.stream.Collectors;

/**
 * @param <E> entity
 */
public class BaseDaoImpl<E> implements BaseDao<E> {

    private final static String DEFAULT_FIND_ALL_QUERY = "SELECT e FROM %s e";
    private final static String DEFAULT_FIND_ALL_BY_PARAMETER_QUERY = "SELECT e FROM %1$s e WHERE e.%2$s = :object";
    private final static String DEFAULT_FIND_BY_ID = "SELECT e FROM %s e WHERE e.id = :id";
    private final static String DEFAULT_FIND_BY_NAME = "SELECT e FROM %s e WHERE e.name = :name";

    private final EntityManager entityManager;
    private final Class<E> parameterizedType;
    private String findAllQuery;
    private String findByIdQuery;
    private String findByNameQuery;
    private Map<String, Object> parameterMap = new HashMap<>();
    private MySqlProcedures mySqlProcedures;

    private Random random;

    public BaseDaoImpl(EntityManager entityManager, Class<E> parameterizedType) {
        this.entityManager = entityManager;
        this.parameterizedType = parameterizedType;
        this.mySqlProcedures = new MySqlProcedures(entityManager);
        random = new Random();

        findAllQuery = String.format(DEFAULT_FIND_ALL_QUERY, parameterizedType.getCanonicalName());
        findByIdQuery = String.format(DEFAULT_FIND_BY_ID, parameterizedType.getCanonicalName());
        findByNameQuery = String.format(DEFAULT_FIND_BY_NAME, parameterizedType.getCanonicalName());
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
            //Commit active transaction
            transaction.commit();
        }

        transaction.begin();
    }

    TypedQuery<E> createQuery(String query, String... parameters) {
        TypedQuery<E> typedQuery = this.entityManager.createQuery(query, parameterizedType);

        for (String parameter : parameters) {
            Object value = this.parameterMap.get(parameter);
            typedQuery.setParameter(parameter, value);
        }

        return typedQuery;
    }

    private EntityTransaction getTransaction() {
        return this.entityManager.getTransaction();
    }

    /**
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
            throw new EntityExistsException(String.format("Can not add [%s] to database", e.toString()));
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
        this.beginTransaction();
        final E updated = this.entityManager.merge(e);
        getTransaction().commit();
        return updated;
    }

    /**
     * @param e entity to delete
     */
    @Override
    public void delete(E e) {
        this.beginTransaction();
        this.entityManager.remove(e);
        getTransaction().commit();
    }


    /**
     * @param name value
     * @return entity
     */
    @Override
    public E findByName(String name) {
        this.beginTransaction();
        TypedQuery<E> query = this.entityManager.createQuery(findByNameQuery, parameterizedType);
        query.setParameter("name", name);
        final E result = query.getSingleResult();
        this.getTransaction().commit();
        return result;
    }

    /**
     * @param name      value
     * @param parameter field name
     * @return entity
     */
    @Override
    public E findByName(String name, String parameter) {
        this.beginTransaction();
        String jpql = String.format(findAllQuery + " WHERE e.%s = :name", parameter);
        TypedQuery<E> query = this.entityManager.createQuery(jpql, parameterizedType);
        query.setParameter(parameter, name);
        final E result = query.getSingleResult();
        this.getTransaction().commit();
        return result;
    }

    /**
     * @param object    entire object to be queried on
     * @param fieldName field name of property in <>E</>
     * @return result
     */
    @Override
    public E findBy(Object object, String fieldName) throws NullPointerException {
        this.beginTransaction();
        TypedQuery<E> query = getTypedQuery(object, fieldName);
        final E result = query.getSingleResult();
        this.getTransaction().commit();
        return result;
    }

    @Override
    public E findBy(Object object) {
        return findBy(object, null);
    }

    /**
     * @param object    entire object to be queried on
     * @param fieldName field name of property in <>E</>
     * @return result list
     */
    @Override
    public List<E> findAllBy(Object object, String fieldName) throws NullPointerException {
        this.beginTransaction();
        TypedQuery<E> query = getTypedQuery(object, fieldName);
        final List<E> resultList = query.getResultList();
        this.getTransaction().commit();
        return resultList;
    }

    @Override
    public List<E> findAllBy(Object object) throws NullPointerException {
        return findAllBy(object, null);
    }

    @Override
    public void commitTransaction() {
        this.getTransaction().commit();
    }

    @Override
    public void rollBackTransaction() {
        this.getTransaction().rollback();
    }

    private TypedQuery<E> getTypedQuery(Object object, String fieldName) throws NullPointerException {
        if (object == null) {
            throw new NullPointerException();
        }
        String jpql = String.format(DEFAULT_FIND_ALL_BY_PARAMETER_QUERY,
                this.parameterizedType.getCanonicalName(),
                fieldName != null ? fieldName : extractEntityClassName(object));

        TypedQuery<E> query = this.entityManager.createQuery(jpql, this.parameterizedType);
        query.setParameter("object", object);
        return query;
    }

    private String extractEntityClassName(Object object) {
        final Class<?> objectClass = object.getClass();

        if (objectClass.getName().contains("java.lang")) {
            if (objectClass.getSimpleName().equals("String")) return "name";

            throw new RuntimeException(String.format("Please supply parameter name for object [%s]", this.parameterizedType.getCanonicalName()));
        }

        final String packageName = objectClass.getPackage().getName() + ".";
        return objectClass.getTypeName().toLowerCase().replaceAll(packageName, "");
    }

    /**
     * @param e          entity to be checked
     * @param collection collection of entity class
     * @return collection containing passed entity
     */
    private boolean alreadyExists(E e, List<E> collection) {
        return collection.contains(e);
    }

    /**
     * @param parameterName name of the passed parameter
     * @param value of object
     */
    public void setParameters(String parameterName, Object value) {
        this.parameterMap.put(parameterName, value);
    }

    public MySqlProcedures getMySqlProcedures() {
        return mySqlProcedures;
    }


    protected Long getRandomObjectId(List<E> resultList, Function<E, Long> mappedFunction) {
        List<Long> collectedIds = resultList.stream()
                                          .map(mappedFunction)
                                          .collect(Collectors.toList());

        return collectedIds.get(this.random.nextInt(collectedIds.size()));
    }
}
