package sr.unasat.jpa.dao;

import sr.unasat.jpa.entity.Brand;
import sr.unasat.jpa.entity.HardwareStock;
import sr.unasat.jpa.entity.enums.CategoryName;

import java.util.List;

public interface HardwareStockDao extends BaseDao<HardwareStock> {

    List<HardwareStock> findAllStockByCategory(CategoryName category);

    List<HardwareStock> findAllStockByBrand(Brand brand);

    List<HardwareStock> findAllStockBetween(Double leftOperand, Double rightOperand);

    List<HardwareStock> findAllStockByCategoryAndBrand_Id(CategoryName categoryName, Long brandId);
}
