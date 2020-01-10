package sr.unasat.jpa.dao.impl;

import sr.unasat.jpa.entity.Category;

import javax.persistence.EntityManager;

public class CategoryDao extends BaseDaoImpl<Category> {

    public CategoryDao(EntityManager entityManager) {
        super(entityManager, Category.class);
    }

}
