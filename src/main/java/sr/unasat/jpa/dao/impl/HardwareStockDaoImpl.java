package sr.unasat.jpa.dao.impl;

import sr.unasat.jpa.dao.HardwareStockDao;
import sr.unasat.jpa.entity.Brand;
import sr.unasat.jpa.entity.HardwareStock;
import sr.unasat.jpa.entity.enums.CategoryName;

import javax.persistence.EntityManager;
import javax.persistence.TypedQuery;
import java.util.List;

//TODO: Do this for all dao's
public class HardwareStockDaoImpl extends BaseDaoImpl<HardwareStock> implements HardwareStockDao {

    public HardwareStockDaoImpl(EntityManager entityManager) {
        super(entityManager, HardwareStock.class);
    }

    @Override
    public List<HardwareStock> findAllStockByCategory(CategoryName category) {
        this.beginTransaction();
        String jpql = "SELECT hs FROM HardwareStock hs WHERE hs.category.name = :category";
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
}
