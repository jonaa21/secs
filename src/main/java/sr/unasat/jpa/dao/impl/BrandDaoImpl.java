package sr.unasat.jpa.dao.impl;

import sr.unasat.jpa.dao.BrandDao;
import sr.unasat.jpa.entity.Brand;
import sr.unasat.jpa.entity.enums.CategoryName;

import javax.persistence.EntityManager;
import javax.persistence.TypedQuery;
import java.util.List;

public class BrandDaoImpl extends BaseDaoImpl<Brand> implements BrandDao {

    public BrandDaoImpl(EntityManager entityManager) {
        super(entityManager, Brand.class);
    }


    @Override
    public List<Brand> findAllBrandsByCategory_Name(CategoryName categoryName) {
        this.beginTransaction();
        String jpql = "SELECT DISTINCT b from Brand b " +
                              "JOIN HardwareStock hs on hs.brand.id = b.id " +
                              "WHERE hs.category.categoryName = :categoryName";
        this.setParameters("categoryName", categoryName);
        TypedQuery<Brand> query = this.createQuery(jpql, "categoryName");
        List<Brand> brands = query.getResultList();
        this.commitQuery();
        return brands;
    }
}
