package sr.unasat.jpa.dao.impl;

import sr.unasat.jpa.entity.Customer;

import javax.persistence.EntityManager;
import javax.persistence.TypedQuery;
import java.util.List;

public class CustomerDao extends BaseDaoImpl<Customer> {

    public CustomerDao(EntityManager entityManager) {
        super(entityManager);
    }

    @Override
    public List<Customer> selectAll() {
        this.beginTransaction();
        String jpql = "select c from Customer c";
        TypedQuery<Customer> query = this.entityManager.createQuery(jpql, Customer.class);
        List<Customer> brands = query.getResultList();
        this.getTransaction().commit();
        return brands;
    }

    @Override
    public Customer selectById(Long id) {
        this.beginTransaction();
        String jpql = "select c from Customer c where c.id = :id";
        TypedQuery<Customer> query = this.entityManager.createQuery(jpql, Customer.class);
        query.setParameter("id", id);
        Customer brand = query.getSingleResult();
        this.getTransaction().commit();
        return brand;
    }

    @Override
    public Customer deleteById(Long id) {
        return null;
    }
}
