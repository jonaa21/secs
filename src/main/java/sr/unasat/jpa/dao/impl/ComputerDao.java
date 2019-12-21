package sr.unasat.jpa.dao.impl;

import sr.unasat.jpa.entity.Computer;

import javax.persistence.EntityManager;
import javax.persistence.TypedQuery;
import java.util.List;

public class ComputerDao extends BaseDaoImpl<Computer> {

    public ComputerDao(EntityManager entityManager) {
        super(entityManager);
    }

    @Override
    public List<Computer> selectAll() {
        this.beginTransaction();
        String jpql = "select c from Computer c";
        TypedQuery<Computer> query = this.entityManager.createQuery(jpql, Computer.class);
        List<Computer> brands = query.getResultList();
        this.getTransaction().commit();
        return brands;
    }

    @Override
    public Computer selectById(Long id) {
        this.beginTransaction();
        String jpql = "select c from Computer c where c.id = :id";
        TypedQuery<Computer> query = this.entityManager.createQuery(jpql, Computer.class);
        query.setParameter("id", id);
        Computer brand = query.getSingleResult();
        this.getTransaction().commit();
        return brand;
    }

    @Override
    public Computer deleteById(Long id) {
        return null;
    }
}
