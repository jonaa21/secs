package sr.unasat.jpa.service.impl;

import sr.unasat.jpa.dao.impl.UserDao;
import sr.unasat.jpa.entity.User;

import javax.persistence.EntityManager;

public class UserService extends BaseServiceImpl<UserDao, User> {

    public UserService(EntityManager entityManager) {
        super(new UserDao(entityManager));
    }


}