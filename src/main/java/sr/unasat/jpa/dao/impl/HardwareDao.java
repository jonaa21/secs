package sr.unasat.jpa.dao.impl;

import sr.unasat.jpa.entity.Hardware;

import javax.persistence.EntityManager;
import javax.persistence.TypedQuery;
import java.util.List;

public class HardwareDao extends BaseDaoImpl<Hardware> {

    public HardwareDao(EntityManager entityManager) {
        super(entityManager);
    }

    @Override
    public List<Hardware> findAll() {
        this.beginTransaction();
        String jpql = "select h from Hardware h";
        TypedQuery<Hardware> query = this.entityManager.createQuery(jpql, Hardware.class);
        List<Hardware> brands = query.getResultList();
        this.getTransaction().commit();
        return brands;
    }

    @Override
    public Hardware findById(Long id) {
        this.beginTransaction();
        String jpql = "select h from Hardware h where h.id = :id";
        TypedQuery<Hardware> query = this.entityManager.createQuery(jpql, Hardware.class);
        query.setParameter("id", id);
        Hardware brand = query.getSingleResult();
        this.getTransaction().commit();
        return brand;
    }
}
