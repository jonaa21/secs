package sr.unasat.jpa.dao;

import java.util.List;

public interface BaseDao<E> {

    List<E> selectAll();

    E selectById(Long id);

    E deleteById(Long id);

}
