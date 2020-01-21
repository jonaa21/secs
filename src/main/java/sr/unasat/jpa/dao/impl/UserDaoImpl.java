package sr.unasat.jpa.dao.impl;

import sr.unasat.jpa.dao.RoleDao;
import sr.unasat.jpa.dao.UserDao;
import sr.unasat.jpa.entity.Role;
import sr.unasat.jpa.entity.User;

import javax.persistence.EntityExistsException;
import javax.persistence.EntityManager;
import javax.persistence.TypedQuery;

public class UserDaoImpl extends BaseDaoImpl<User> implements UserDao {

    private RoleDao roleDao;

    public UserDaoImpl(EntityManager entityManager) {
        super(entityManager, User.class);
        roleDao = new RoleDaoImpl(entityManager);
    }

    @Override
    public User saveUser(User user) throws EntityExistsException {

        Role role = roleDao.findByName("User");
        user.setRole(role);
        super.save(user);
        return findByFirstNameAndLastName(user.getFirstName(), user.getLastName());
    }

    @Override
    public User findByFirstNameAndLastName(String firstName, String lastName) {

        this.beginTransaction();
        String jpql = "SELECT u from User u where u.firstName = :firstName AND u.lastName = :lastName";
        this.setParameters("firstName", firstName);
        this.setParameters("lastName", lastName);
        TypedQuery<User> query = this.createQuery(jpql, "firstName", "lastName");
        User result = query.getSingleResult();
        this.commitQuery();
        return result;
    }
}
