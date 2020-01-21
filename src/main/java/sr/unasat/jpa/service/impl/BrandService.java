package sr.unasat.jpa.service.impl;

import sr.unasat.jpa.dao.BrandDao;
import sr.unasat.jpa.dao.impl.BrandDaoImpl;
import sr.unasat.jpa.entity.Brand;
import sr.unasat.jpa.entity.enums.CategoryName;

import javax.persistence.EntityManager;
import java.util.List;

public class BrandService extends BaseServiceImpl<BrandDao, Brand> {

    private BrandDao brandDao;

    public BrandService(EntityManager entityManager) {
        super(new BrandDaoImpl(entityManager));
        brandDao = this.getDao();
    }


    public List<Brand> findBrandsByCategoryName(CategoryName categoryName) {
        return brandDao.findAllBrandsByCategory_Name(categoryName);
    }
}
