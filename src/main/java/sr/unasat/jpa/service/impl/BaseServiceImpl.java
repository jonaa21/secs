package sr.unasat.jpa.service.impl;

import sr.unasat.jpa.dao.impl.BaseDaoImpl;
import sr.unasat.jpa.service.BaseService;

import javax.persistence.EntityExistsException;
import java.util.Collection;
import java.util.List;

public class BaseServiceImpl<D extends BaseDaoImpl<E>, E> implements BaseService<E> {

    protected D dao;

    BaseServiceImpl(D dao) {
        this.dao = dao;
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
}
