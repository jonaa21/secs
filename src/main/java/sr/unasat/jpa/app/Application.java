package sr.unasat.jpa.app;

import sr.unasat.jpa.ui.HomePageScreen;
import sr.unasat.jpa.ui.MenuScreen;

public class Application {

    public static void main(String[] args) {

        //Start project
        MenuScreen menuScreen = new HomePageScreen();
        menuScreen.showMenu();

        //RAPPORTS
//        EntityManager entityManager = JPAConfiguration.getEntityManager();
//        MySqlProcedures procedures = new MySqlProcedures(entityManager);
//
//        List<Rapport.ReceiptPerYear> resultList = procedures.getRECEIPTS_PER_QUARTER_PER_YEAR(2020).getResultList();
//        resultList.forEach(System.out::println);
//        entityManager.getTransaction().commit();
//
//        List<Rapport.MostChosenPaymentMethod> resultList1 = procedures.getMOST_CHOSEN_PAYMENT_METHOD().getResultList();
//        resultList1.forEach(System.out::println);
//        entityManager.getTransaction().commit();
//
//        List<Rapport.MostSoldHardware> resultList2 = procedures.getMOST_SOLD_HARDWARE_PER_BRAND().getResultList();
//        resultList2.forEach(System.out::println);
//        entityManager.getTransaction().commit();
    }
}
