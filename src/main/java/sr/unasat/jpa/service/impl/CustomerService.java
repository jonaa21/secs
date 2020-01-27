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

    public CustomerService(EntityManager entityManager) {
        super(new CustomerDaoImpl(entityManager));
    }


    public Customer saveCustomer(User user, String userName) {
        try {
            this.getDao().save(user, userName);
        } catch (EntityExistsException e) {
            System.out.println(e.getMessage());
        }
        return null;
    }

    public Customer findCustomerByUserName(String userName) throws NoResultException {
        return this.getDao().findCustomerByUserName(userName);
    }

    public Customer findByUser(User user) {
        return this.getDao().findBy(user);
    }

    public void loginUser(String userName) {
        try {
            Customer customer = findCustomerByUserName(userName);
            if (customer != null) {
                setLoggedInCustomer(customer);
            }
        } catch (NoResultException e) {
            System.out.println(String.format(Message.NOT_FOUND, userName));
        }
    }

}
