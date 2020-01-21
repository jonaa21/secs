package sr.unasat.jpa.service.impl;

import sr.unasat.jpa.dao.CustomerDao;
import sr.unasat.jpa.dao.impl.CustomerDaoImpl;
import sr.unasat.jpa.entity.Customer;
import sr.unasat.jpa.entity.User;
import sr.unasat.jpa.ui.Message;

import javax.persistence.EntityExistsException;
import javax.persistence.EntityManager;
import javax.persistence.NoResultException;

public class CustomerService extends BaseServiceImpl<CustomerDao, Customer> {

    private CustomerDao customerDao;

    public CustomerService(EntityManager entityManager) {
        super(new CustomerDaoImpl(entityManager));
        customerDao = this.getDao();
    }


    public boolean saveCustomer(User user, String userName) {
        try {
            customerDao.save(user, userName);
            return true;
        } catch (EntityExistsException e) {
            System.out.println(e.getMessage());
            return false;
        }
    }

    public Customer findCustomerByUserName(String userName) throws NoResultException {
        return customerDao.findCustomerByUserName(userName);
    }

    public Customer findByUser(User user) {
        return customerDao.findBy(user);
    }

    public boolean loginUser(String userName) {
        try {
            Customer customer = findCustomerByUserName(userName);
            if (customer != null) {
                setLoggedInCustomer(customer);
                return true;
            }
        } catch (NoResultException e) {
            System.out.println(String.format(Message.NOT_FOUND, userName));
        }
        return false;
    }

}
