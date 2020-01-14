package sr.unasat.jpa.dao.impl;

import sr.unasat.jpa.dao.BrandDao;
import sr.unasat.jpa.entity.Brand;

import javax.persistence.EntityManager;

public class BrandDaoImpl extends BaseDaoImpl<Brand> implements BrandDao {

    public BrandDaoImpl(EntityManager entityManager) {
        super(entityManager, Brand.class);
    }


}
