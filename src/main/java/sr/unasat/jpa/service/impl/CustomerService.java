package sr.unasat.jpa.service.impl;

import sr.unasat.jpa.dao.impl.CustomerDaoImpl;
import sr.unasat.jpa.entity.Customer;

import javax.persistence.EntityManager;

public class CustomerService extends BaseServiceImpl<CustomerDaoImpl, Customer> {

    public CustomerService(EntityManager entityManager) {
        super(new CustomerDaoImpl(entityManager));
    }


}
