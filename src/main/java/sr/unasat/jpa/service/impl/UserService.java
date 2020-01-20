package sr.unasat.jpa.service.impl;

import sr.unasat.jpa.dao.UserDao;
import sr.unasat.jpa.dao.impl.UserDaoImpl;
import sr.unasat.jpa.entity.User;

import javax.persistence.EntityManager;

public class UserService extends BaseServiceImpl<UserDao, User> {

    private UserDao userDao;

    public UserService(EntityManager entityManager) {
        super(new UserDaoImpl(entityManager));

        userDao = this.getDao();
    }

    public void saveUser(User user) {
        userDao.saveUser(user);
    }

    public User findByFirstNameAndLastName(String firstName, String lastName) { return userDao.findByFirstNameAndLastName(firstName, lastName); }
}
