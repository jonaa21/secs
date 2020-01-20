package sr.unasat.jpa.service.impl;

import sr.unasat.jpa.dao.BaseDao;
import sr.unasat.jpa.entity.Customer;
import sr.unasat.jpa.service.BaseService;

import javax.persistence.EntityExistsException;
import java.util.Collection;
import java.util.List;

/**
 * @param <D> dao interface
 * @param <E> entity
 */
public class BaseServiceImpl<D extends BaseDao<E>, E> implements BaseService<E> {

    protected D dao;
    private static Customer loggedInCustomer;

    BaseServiceImpl(D dao) {
        this.dao = dao;
    }

    public D getDao() {
        return dao;
    }

    @Override
    public List<E> findAll() {
        return dao.findAll();
    }

    @Override
    public E findById(Long id) {
        return dao.findById(id);
    }

    @Override
    public void delete(E e) {
        dao.delete(e);
    }

    @Override
    public void save(E e) throws EntityExistsException {
        dao.save(e);
    }

    @Override
    public E update(E e) {
        return dao.update(e);
    }

    @Override
    public <T extends Collection<E>> void saveAll(T collection) {
        dao.saveAll(collection);
    }

    @Override
    public E findByName(String name) {
        return dao.findByName(name);
    }

    @Override
    public E findByName(String name, String parameter) {
        return dao.findByName(name, parameter);
    }

    @Override
    public E findBy(Object object, String fieldName) throws NullPointerException {
        return dao.findBy(object, fieldName);
    }

    @Override
    public E findBy(Object object) throws NullPointerException {
        return dao.findBy(object);
    }

    @Override
    public List<E> findAllBy(Object object, String fieldName) throws NullPointerException {
        return dao.findAllBy(object, fieldName);
    }

    @Override
    public List<E> findAllBy(Object object) throws NullPointerException {
        return dao.findAllBy(object);
    }

    public static Customer getLoggedInCustomer() {
        return loggedInCustomer;
    }

    public static void setLoggedInCustomer(Customer loggedInCustomer) {
        BaseServiceImpl.loggedInCustomer = loggedInCustomer;
    }
}
