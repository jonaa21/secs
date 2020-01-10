package sr.unasat.jpa.dao.impl;

import sr.unasat.jpa.entity.Brand;

import javax.persistence.EntityManager;

public class BrandDao extends BaseDaoImpl<Brand> {

    public BrandDao(EntityManager entityManager) {
        super(entityManager, Brand.class);
    }


}
