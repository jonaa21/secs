package sr.unasat.jpa.dao.impl;

import sr.unasat.jpa.dao.UserDao;
import sr.unasat.jpa.entity.User;

import javax.persistence.EntityManager;

public class UserDaoImpl extends BaseDaoImpl<User> implements UserDao {

    public UserDaoImpl(EntityManager entityManager) {
        super(entityManager, User.class);
    }

}
