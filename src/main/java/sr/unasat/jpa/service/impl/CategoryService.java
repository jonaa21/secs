package sr.unasat.jpa.service.impl;

import sr.unasat.jpa.dao.impl.CategoryDaoImpl;
import sr.unasat.jpa.entity.Category;

import javax.persistence.EntityManager;

public class CategoryService extends BaseServiceImpl<CategoryDaoImpl, Category> {

    public CategoryService(EntityManager entityManager) {
        super(new CategoryDaoImpl(entityManager));
    }


}
