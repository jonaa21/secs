package sr.unasat.jpa.dao.impl;

import sr.unasat.jpa.dao.CustomerDao;
import sr.unasat.jpa.entity.Customer;

import javax.persistence.EntityManager;

public class CustomerDaoImpl extends BaseDaoImpl<Customer> implements CustomerDao {

    public CustomerDaoImpl(EntityManager entityManager) {
        super(entityManager, Customer.class);
    }

}
