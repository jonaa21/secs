package sr.unasat.jpa.dao.impl.procedures;

import javax.persistence.EntityManager;
import javax.persistence.ParameterMode;
import javax.persistence.StoredProcedureQuery;

public class MySqlProcedures {

    private EntityManager entityManager;

    public MySqlProcedures(EntityManager entityManager) {
        this.entityManager = entityManager;
    }

    public StoredProcedureQuery getUPDATE_HARDWARE_STOCK_PROCEDURE(Long stockId, Integer amount) {
        return this.entityManager
                       .createStoredProcedureQuery("p_update_hardware_stock")
                       .registerStoredProcedureParameter("hardware_stock_id", Long.class, ParameterMode.IN)
                       .registerStoredProcedureParameter("hardware_amount", Integer.class, ParameterMode.IN)
                       .setParameter("hardware_stock_id", stockId)
                       .setParameter("hardware_amount", amount);
    }
}
