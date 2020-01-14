package sr.unasat.jpa.dao.impl;

import sr.unasat.jpa.dao.HardwareStockDao;
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

        String jpql = "SELECT s FROM HardwareStock s where s.category.name = :category";
        TypedQuery<HardwareStock> query = this.createQuery(jpql);
        query.setParameter("category", category);
        return query.getResultList();
    }
}
