package sr.unasat.jpa.dao.impl;

import sr.unasat.jpa.entity.Category;

import javax.persistence.EntityManager;
import javax.persistence.TypedQuery;
import java.util.List;

public class CategoryDao extends BaseDaoImpl<Category> {

    public CategoryDao(EntityManager entityManager) {
        super(entityManager);
    }

    @Override
    public List<Category> findAll() {
        this.beginTransaction();
        String jpql = "select c from Category c";
        TypedQuery<Category> query = this.entityManager.createQuery(jpql, Category.class);
        List<Category> brands = query.getResultList();
        this.getTransaction().commit();
        return brands;
    }

    @Override
    public Category findById(Long id) {
        this.beginTransaction();
        String jpql = "select c from Category c where c.id = :id";
        TypedQuery<Category> query = this.entityManager.createQuery(jpql, Category.class);
        query.setParameter("id", id);
        Category brand = query.getSingleResult();
        this.getTransaction().commit();
        return brand;
    }
}
