package sr.unasat.jpa.service.impl;

import sr.unasat.jpa.dao.impl.UserDaoImpl;
import sr.unasat.jpa.entity.User;

import javax.persistence.EntityManager;

public class UserService extends BaseServiceImpl<UserDaoImpl, User> {

    public UserService(EntityManager entityManager) {
        super(new UserDaoImpl(entityManager));
    }


}
