package sr.unasat.jpa.dao;

import sr.unasat.jpa.entity.User;

import javax.persistence.EntityExistsException;

public interface UserDao extends BaseDao<User> {
    User saveUser(User user) throws EntityExistsException;

    User findByFirstNameAndLastName(String firstName, String lastName);
}
