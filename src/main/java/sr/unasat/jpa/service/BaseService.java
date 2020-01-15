package sr.unasat.jpa.service;

import javax.persistence.EntityExistsException;
import java.util.Collection;
import java.util.List;

/**
 *
 * @param <E> entity
 */
public interface BaseService<E> {

    List<E> findAll();

    E findById(Long id);

    void delete(E e);

    void save(E e) throws EntityExistsException;

    E update(E e);

    <T extends Collection<E>> void saveAll(T collection);

     E findByName(String name);

     E findByName(String name, String parameter);

     E findBy(Object o, String fieldName);
}
