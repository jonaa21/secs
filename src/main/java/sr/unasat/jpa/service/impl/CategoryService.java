package sr.unasat.jpa.service.impl;

import sr.unasat.jpa.dao.CategoryDao;
import sr.unasat.jpa.dao.impl.CategoryDaoImpl;
import sr.unasat.jpa.entity.Category;

import javax.persistence.EntityManager;

public class CategoryService extends BaseServiceImpl<CategoryDao, Category> {

    public CategoryService(EntityManager entityManager) {
        super(new CategoryDaoImpl(entityManager));
    }


}
