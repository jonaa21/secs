package sr.unasat.jpa.dao;

import sr.unasat.jpa.entity.Brand;
import sr.unasat.jpa.entity.enums.CategoryName;

import java.util.List;

public interface BrandDao extends BaseDao<Brand> {
    List<Brand> findAllBrandsByCategory_Name(CategoryName categoryName);
}
