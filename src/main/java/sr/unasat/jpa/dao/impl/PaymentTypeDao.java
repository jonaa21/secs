package sr.unasat.jpa.dao.impl;

import sr.unasat.jpa.entity.PaymentType;

import javax.persistence.EntityManager;
import javax.persistence.TypedQuery;
import java.util.List;

public class PaymentTypeDao extends BaseDaoImpl<PaymentType> {

    public PaymentTypeDao(EntityManager entityManager) {
        super(entityManager);
    }

    @Override
    public List<PaymentType> findAll() {
        this.beginTransaction();
        String jpql = "select pt from PaymentType pt";
        TypedQuery<PaymentType> query = this.entityManager.createQuery(jpql, PaymentType.class);
        List<PaymentType> brands = query.getResultList();
        this.getTransaction().commit();
        return brands;
    }

    @Override
    public PaymentType findById(Long id) {
        this.beginTransaction();
        String jpql = "select pt from PaymentType pt where pt.id = :id";
        TypedQuery<PaymentType> query = this.entityManager.createQuery(jpql, PaymentType.class);
        query.setParameter("id", id);
        PaymentType brand = query.getSingleResult();
        this.getTransaction().commit();
        return brand;
    }
}
