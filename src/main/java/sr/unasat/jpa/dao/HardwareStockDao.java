package sr.unasat.jpa.dao;

import sr.unasat.jpa.entity.HardwareStock;
import sr.unasat.jpa.entity.enums.CategoryName;

import java.util.List;

public interface HardwareStockDao {

    List<HardwareStock> findAllStockByCategory(CategoryName category);
}
