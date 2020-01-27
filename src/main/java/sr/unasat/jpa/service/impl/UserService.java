package sr.unasat.jpa.service.impl;

import sr.unasat.jpa.dao.UserDao;
import sr.unasat.jpa.dao.impl.UserDaoImpl;
import sr.unasat.jpa.entity.User;

import javax.persistence.EntityManager;

public class UserService extends BaseServiceImpl<UserDao, User> {

    public UserService(EntityManager entityManager) {
        super(new UserDaoImpl(entityManager));
    }

    public User saveUser(User user) {
        return this.getDao().saveUser(user);
    }

    public User findByFirstNameAndLastName(String firstName, String lastName) { return this.getDao().findByFirstNameAndLastName(firstName, lastName); }
}
