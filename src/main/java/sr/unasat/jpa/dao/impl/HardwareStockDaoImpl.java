package sr.unasat.jpa.dao.impl;

import sr.unasat.jpa.dao.HardwareStockDao;
import sr.unasat.jpa.entity.Brand;
import sr.unasat.jpa.entity.HardwareStock;
import sr.unasat.jpa.entity.enums.CategoryName;
import sr.unasat.jpa.entity.enums.SpecStatus;

import javax.persistence.EntityManager;
import javax.persistence.TypedQuery;
import java.util.List;

public class HardwareStockDaoImpl extends BaseDaoImpl<HardwareStock> implements HardwareStockDao {

    public HardwareStockDaoImpl(EntityManager entityManager) {
        super(entityManager, HardwareStock.class);
    }

    @Override
    public List<HardwareStock> findAllStockByCategory(CategoryName category) {
        this.beginTransaction();
        String jpql = "SELECT hs FROM HardwareStock hs WHERE hs.category.categoryName = :category";
        TypedQuery<HardwareStock> query = this.createQuery(jpql);
        query.setParameter("category", category);
        return query.getResultList();
    }

    @Override
    public List<HardwareStock> findAllStockByBrand(Brand brand) {
        this.beginTransaction();
        String jpql = "SELECT hs FROM HardwareStock hs WHERE hs.brand = :brand";
        TypedQuery<HardwareStock> query = this.createQuery(jpql);
        query.setParameter("brand", brand);
        return query.getResultList();
    }

    @Override
    public List<HardwareStock> findAllStockBetween(Double leftOperand, Double rightOperand) {
        this.beginTransaction();
        if (leftOperand > rightOperand) {
            throw new RuntimeException(String.format("Invalid parameters: [%1$s] can not be bigger than [%2$s]", leftOperand, rightOperand));
        }
        String jpql = "SELECT hs FROM HardwareStock hs WHERE hs.price BETWEEN :leftOperand AND :rightOperand";
        TypedQuery<HardwareStock> query = this.createQuery(jpql);
        query.setParameter("leftOperand", leftOperand);
        query.setParameter("rightOperand", rightOperand);
        return query.getResultList();
    }

    @Override
    public List<HardwareStock> findAllStockByCategoryAndBrand_Id(CategoryName categoryName, Long brandId) {
        this.beginTransaction();
        String jpql = "SELECT hs from HardwareStock hs WHERE hs.category.categoryName = :categoryName AND hs.brand.id = :brandId";
        this.setParameters("categoryName", categoryName);
        this.setParameters("brandId", brandId);
        TypedQuery<HardwareStock> query = this.createQuery(jpql, "categoryName", "brandId");
        List<HardwareStock> resultList = query.getResultList();
        this.commitTransaction();
        return resultList;
    }

    @Override
    public boolean canAddHardware(HardwareStock stock, Integer amount) {
        this.beginTransaction();
        return getMySqlProcedures().getUPDATE_HARDWARE_STOCK_PROCEDURE(stock.getId(), amount).executeUpdate() != -1;
    }

    @Override
    public HardwareStock findStockByCategoryNameAndSizeAndSpecStatus(CategoryName categoryName, SpecStatus specStatus) {
        this.beginTransaction();
        String jpql = "SELECT hs from HardwareStock hs WHERE hs.category.categoryName = :categoryName AND hs.specLevel.specStatus = :specStatus";
        this.setParameters("categoryName", categoryName);
        this.setParameters("specStatus", specStatus);

        List<HardwareStock> resultList = this.createQuery(jpql, "categoryName", "specStatus").getResultList();
        Long randomObjectId = this.getRandomObjectId(resultList, HardwareStock::getId);

        HardwareStock stock = resultList.stream().filter(res -> res.getId().equals(randomObjectId)).findFirst().orElse(null);
        if (stock != null) {
            this.commitTransaction();
            return stock;
        } else {
            throw new RuntimeException(String.format("Could not find result based on the following: [%1$s], [%2$s]",
                    categoryName.getDescription(), specStatus));
        }
    }
}
