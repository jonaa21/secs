package sr.unasat.jpa.dao.impl.procedures;

import sr.unasat.jpa.entity.rapport.Rapport;

import javax.persistence.EntityManager;
import javax.persistence.ParameterMode;
import javax.persistence.Query;
import javax.persistence.StoredProcedureQuery;

public class MySqlProcedures {

    private EntityManager entityManager;

    public MySqlProcedures(EntityManager entityManager) {
        this.entityManager = entityManager;
    }

    public StoredProcedureQuery getUPDATE_HARDWARE_STOCK_PROCEDURE(Long stockId, Integer amount) {
        this.entityManager.getTransaction().begin();
        return this.entityManager
                       .createStoredProcedureQuery("p_update_hardware_stock")
                       .registerStoredProcedureParameter("hardware_stock_id", Long.class, ParameterMode.IN)
                       .registerStoredProcedureParameter("hardware_amount", Integer.class, ParameterMode.IN)
                       .setParameter("hardware_stock_id", stockId)
                       .setParameter("hardware_amount", amount);
    }

    public Query getRECEIPTS_PER_QUARTER_PER_YEAR(int year) {
        this.entityManager.getTransaction().begin();
        return this.entityManager
                       .createNativeQuery("call p_receipt_per_quarter_over_year(:year)", Rapport.ReceiptPerYear.class)
                       .setParameter("year", year);
    }

    public Query getMOST_SOLD_HARDWARE_PER_BRAND() {
        this.entityManager.getTransaction().begin();
        return this.entityManager
                       .createNativeQuery("call p_most_sold_hardware_per_brand()", Rapport.MostSoldHardware.class);
    }

    public Query getMOST_CHOSEN_PAYMENT_METHOD() {
        this.entityManager.getTransaction().begin();
        return this.entityManager
                       .createNativeQuery("call p_most_chosen_payment_method()", Rapport.MostChosenPaymentMethod.class);
    }
}
