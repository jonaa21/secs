package sr.unasat.jpa.dao;

import javax.persistence.EntityExistsException;
import java.util.Collection;
import java.util.List;

public interface BaseDao<E> {

    List<E> findAll();

    E findById(Long id);

    void delete(E e);

    void save(E e) throws EntityExistsException;

    E update(E e);

    <T extends Collection<E>> void saveAll(T collection);

}
