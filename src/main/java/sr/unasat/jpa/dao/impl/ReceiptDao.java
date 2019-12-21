package sr.unasat.jpa.dao.impl;

import sr.unasat.jpa.entity.Receipt;

import javax.persistence.EntityManager;
import javax.persistence.TypedQuery;
import java.util.List;

public class ReceiptDao extends BaseDaoImpl<Receipt> {

    public ReceiptDao(EntityManager entityManager) {
        super(entityManager);
    }

    @Override
    public List<Receipt> selectAll() {
        this.beginTransaction();
        String jpql = "select r from Receipt r";
        TypedQuery<Receipt> query = this.entityManager.createQuery(jpql, Receipt.class);
        List<Receipt> brands = query.getResultList();
        this.getTransaction().commit();
        return brands;
    }

    @Override
    public Receipt selectById(Long id) {
        this.beginTransaction();
        String jpql = "select r from Receipt r where r.id = :id";
        TypedQuery<Receipt> query = this.entityManager.createQuery(jpql, Receipt.class);
        query.setParameter("id", id);
        Receipt brand = query.getSingleResult();
        this.getTransaction().commit();
        return brand;
    }

    @Override
    public Receipt deleteById(Long id) {
        return null;
    }
}
