package sr.unasat.jpa.service.impl;

import sr.unasat.jpa.dao.BrandDao;
import sr.unasat.jpa.dao.impl.BrandDaoImpl;
import sr.unasat.jpa.entity.Brand;

import javax.persistence.EntityManager;

public class BrandService extends BaseServiceImpl<BrandDao, Brand> {

    public BrandService(EntityManager entityManager) {
        super(new BrandDaoImpl(entityManager));
    }


}
