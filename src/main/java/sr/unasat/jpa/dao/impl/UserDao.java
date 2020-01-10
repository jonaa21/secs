package sr.unasat.jpa.dao.impl;

import sr.unasat.jpa.entity.User;

import javax.persistence.EntityManager;

public class UserDao extends BaseDaoImpl<User> {

    public UserDao(EntityManager entityManager) {
        super(entityManager, User.class);
    }

}
