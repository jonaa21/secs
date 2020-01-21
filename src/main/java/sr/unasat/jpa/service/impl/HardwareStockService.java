package sr.unasat.jpa.service.impl;

import sr.unasat.jpa.dao.HardwareStockDao;
import sr.unasat.jpa.dao.impl.HardwareStockDaoImpl;
import sr.unasat.jpa.entity.Brand;
import sr.unasat.jpa.entity.HardwareStock;
import sr.unasat.jpa.entity.enums.CategoryName;

import javax.persistence.EntityManager;
import java.util.List;

public class HardwareStockService extends BaseServiceImpl<HardwareStockDao, HardwareStock> {

    private HardwareStockDao stockDao;

    public HardwareStockService(EntityManager entityManager) {
        super(new HardwareStockDaoImpl(entityManager));

        stockDao = this.getDao();
    }

    public List<HardwareStock> findAllStockByCategory(CategoryName categoryName) {
        return stockDao.findAllStockByCategory(categoryName);
    }

    public List<HardwareStock> findAllStockByBrand(Brand brand) {
        return stockDao.findAllStockByBrand(brand);
    }

    public List<HardwareStock> findAllStockBetween(Double leftOperand, Double rightOperand) {
        return stockDao.findAllStockBetween(leftOperand, rightOperand);
    }

    public List<HardwareStock> findAllStockByCategoryAndBrandId(CategoryName categoryName, Long brandId) {
        return stockDao.findAllStockByCategoryAndBrand_Id(categoryName, brandId);
    }

}
