package sr.unasat.jpa.service.impl;

import sr.unasat.jpa.dao.HardwareStockDao;
import sr.unasat.jpa.dao.impl.HardwareStockDaoImpl;
import sr.unasat.jpa.entity.Brand;
import sr.unasat.jpa.entity.HardwareStock;
import sr.unasat.jpa.entity.enums.CategoryName;
import sr.unasat.jpa.entity.enums.SpecStatus;

import javax.persistence.EntityManager;
import java.util.List;

public class HardwareStockService extends BaseServiceImpl<HardwareStockDao, HardwareStock> {

    public HardwareStockService(EntityManager entityManager) {
        super(new HardwareStockDaoImpl(entityManager));
    }

    public List<HardwareStock> findAllStockByCategory(CategoryName categoryName) {
        return this.getDao().findAllStockByCategory(categoryName);
    }

    public List<HardwareStock> findAllStockByBrand(Brand brand) {
        return this.getDao().findAllStockByBrand(brand);
    }

    public List<HardwareStock> findAllStockBetween(Double leftOperand, Double rightOperand) {
        return this.getDao().findAllStockBetween(leftOperand, rightOperand);
    }

    public List<HardwareStock> findAllStockByCategoryAndBrandId(CategoryName categoryName, Long brandId) {
        return this.getDao().findAllStockByCategoryAndBrand_Id(categoryName, brandId);
    }

    boolean canAddHardware(HardwareStock stock, Integer amount) {
        return this.getDao().canAddHardware(stock, amount);
    }

    public HardwareStock findRandomHardwareBy(CategoryName categoryName, SpecStatus specStatus) {
        return this.getDao().findStockByCategoryNameAndSizeAndSpecStatus(categoryName, specStatus);
    }
}
