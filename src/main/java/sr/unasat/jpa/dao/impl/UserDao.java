package sr.unasat.jpa.dao.impl;

import sr.unasat.jpa.entity.User;

import javax.persistence.EntityManager;
import javax.persistence.TypedQuery;
import java.util.List;

public class UserDao extends BaseDaoImpl<User> {

    public UserDao(EntityManager entityManager) {
        super(entityManager);
    }

    @Override
    public List<User> findAll() {
        this.beginTransaction();
        String jpql = "select u from User u";
        TypedQuery<User> query = this.entityManager.createQuery(jpql, User.class);
        List<User> brands = query.getResultList();
        this.getTransaction().commit();
        return brands;
    }

    @Override
    public User findById(Long id) {
        this.beginTransaction();
        String jpql = "select u from User u where u.id = :id";
        TypedQuery<User> query = this.entityManager.createQuery(jpql, User.class);
        query.setParameter("id", id);
        User brand = query.getSingleResult();
        this.getTransaction().commit();
        return brand;
    }
}
