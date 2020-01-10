package sr.unasat.jpa.dao.impl;

import sr.unasat.jpa.entity.Customer;

import javax.persistence.EntityManager;

public class CustomerDao extends BaseDaoImpl<Customer> {

    public CustomerDao(EntityManager entityManager) {
        super(entityManager, Customer.class);
    }

}
