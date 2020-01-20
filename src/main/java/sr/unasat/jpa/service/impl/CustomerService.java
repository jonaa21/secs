package sr.unasat.jpa.service.impl;

import sr.unasat.jpa.dao.CustomerDao;
import sr.unasat.jpa.dao.impl.CustomerDaoImpl;
import sr.unasat.jpa.entity.Customer;
import sr.unasat.jpa.entity.User;

import javax.persistence.EntityManager;

public class CustomerService extends BaseServiceImpl<CustomerDao, Customer> {

    private CustomerDao customerDao;

    public CustomerService(EntityManager entityManager) {
        super(new CustomerDaoImpl(entityManager));
        customerDao = this.getDao();
    }


    public void saveCustomer(User user, String userName) {
        customerDao.save(user, userName);
    }

    public Customer findCustomerByUserName(String userName) { return customerDao.findCustomerByUserName(userName); }

    public Customer findByUser(User user) { return customerDao.findBy(user); }

    public boolean loginUser(String userName) {
        Customer customer = findCustomerByUserName(userName);
        if (customer != null) {
            setLoggedInCustomer(customer);
            return true;
        }
        return false;
    }

}
