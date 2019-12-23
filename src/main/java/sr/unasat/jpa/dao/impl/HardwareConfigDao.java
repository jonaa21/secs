package sr.unasat.jpa.dao.impl;

import sr.unasat.jpa.entity.HardwareConfig;

import javax.persistence.EntityManager;
import javax.persistence.TypedQuery;
import java.util.List;

public class HardwareConfigDao extends BaseDaoImpl<HardwareConfig> {

    public HardwareConfigDao(EntityManager entityManager) {
        super(entityManager);
    }

    @Override
    public List<HardwareConfig> findAll() {
        this.beginTransaction();
        String jpql = "select h from HardwareConfig h";
        TypedQuery<HardwareConfig> query = this.entityManager.createQuery(jpql, HardwareConfig.class);
        List<HardwareConfig> brands = query.getResultList();
        this.getTransaction().commit();
        return brands;
    }

    @Override
    public HardwareConfig findById(Long id) {
        this.beginTransaction();
        String jpql = "select h from HardwareConfig h where h.id = :id";
        TypedQuery<HardwareConfig> query = this.entityManager.createQuery(jpql, HardwareConfig.class);
        query.setParameter("id", id);
        HardwareConfig brand = query.getSingleResult();
        this.getTransaction().commit();
        return brand;
    }
}
