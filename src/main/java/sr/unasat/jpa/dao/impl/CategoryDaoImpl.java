package sr.unasat.jpa.dao.impl;

import sr.unasat.jpa.dao.CategoryDao;
import sr.unasat.jpa.entity.Category;

import javax.persistence.EntityManager;

public class CategoryDaoImpl extends BaseDaoImpl<Category> implements CategoryDao {

    public CategoryDaoImpl(EntityManager entityManager) {
        super(entityManager, Category.class);
    }

}
