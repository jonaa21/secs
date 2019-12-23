package sr.unasat.jpa.dao.impl;

import sr.unasat.jpa.entity.Brand;

import javax.persistence.EntityManager;
import javax.persistence.TypedQuery;
import java.util.List;

public class BrandDao extends BaseDaoImpl<Brand> {

    public BrandDao(EntityManager entityManager) {
        super(entityManager);
    }

    @Override
    public List<Brand> findAll() {
        this.beginTransaction();
        String jpql = "select b from Brand b";
        TypedQuery<Brand> query = this.entityManager.createQuery(jpql, Brand.class);
        List<Brand> brands = query.getResultList();
        this.getTransaction().commit();
        return brands;
    }

    @Override
    public Brand findById(Long id) {
        this.beginTransaction();
        String jpql = "select b from Brand b where b.id = :id";
        TypedQuery<Brand> query = this.entityManager.createQuery(jpql, Brand.class);
        query.setParameter("id", id);
        Brand brand = query.getSingleResult();
        this.getTransaction().commit();
        return brand;
    }
}
