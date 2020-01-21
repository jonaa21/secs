package sr.unasat.jpa.dao.impl;

import sr.unasat.jpa.dao.CustomerDao;
import sr.unasat.jpa.dao.UserDao;
import sr.unasat.jpa.entity.Customer;
import sr.unasat.jpa.entity.User;

import javax.persistence.EntityManager;
import javax.persistence.NoResultException;
import javax.persistence.TypedQuery;

public class CustomerDaoImpl extends BaseDaoImpl<Customer> implements CustomerDao {

    private UserDao userDao;

    public CustomerDaoImpl(EntityManager entityManager) {
        super(entityManager, Customer.class);
        userDao = new UserDaoImpl(entityManager);
    }

    @Override
    public void save(User user, String userName) {
        User savedUser = userDao.saveUser(user);

        Customer customer = new Customer(savedUser, userName);
        super.save(customer);
    }

    @Override
    public Customer findCustomerByUserName(String userName) throws NoResultException {
        this.beginTransaction();
        String jpql = "SELECT c FROM Customer c where c.userName = :userName";
        this.setParameters("userName", userName);
        TypedQuery<Customer> query = this.createQuery(jpql, "userName");
        Customer result = query.getSingleResult();
        this.commitQuery();
        return result;
    }
}
