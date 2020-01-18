package sr.unasat.jpa.app;

import sr.unasat.jpa.config.JPAConfiguration;
import sr.unasat.jpa.design.patterns.builder.Builder;
import sr.unasat.jpa.design.patterns.builder.ComputerBuilder;
import sr.unasat.jpa.entity.*;
import sr.unasat.jpa.service.impl.*;

import javax.persistence.EntityManager;

public class Application {

    public static void main(String[] args) {

        final EntityManager entityManager = JPAConfiguration.getEntityManager();
        UserService userService = new UserService(entityManager);
        ReceiptService receiptService = new ReceiptService(entityManager);
        PaymentTypeService paymentTypeService = new PaymentTypeService(entityManager);
        ComputerService computerService = new ComputerService(entityManager);
        HardwareStockService hardwareStockService = new HardwareStockService(entityManager);
        RoleService roleService = new RoleService(entityManager);
        BrandService brandService = new BrandService(entityManager);

        Customer customer = new Customer();
        Receipt receipt = new Receipt();
        Computer computer = new Computer();
        Builder builder = new ComputerBuilder();
        HardwareStock stock = hardwareStockService.findById(1L);
        Hardware hardware = new Hardware(stock, 2);
        Brand samsung = brandService.findBy("String");
        hardwareStockService.findAllBy(samsung);
        ComputerConfig build = builder.setMemory(hardware).build();

//        User user = new User();
//        user.setFirstName("Jonathan");
//        user.setLastName("Oldenstam");
//        user.setBalance(5000D);
//        user.setIdNumber("FP00004");
//        user.setRole(roleService.findById(1L));
//
//        userService.save(user);
//        User user = userService.findById(1L);
//        PaymentStrategy strategy = paymentTypeService.getPaymentStrategy(1L, user, "TEST001", LocalDate.now().plusYears(2L));
//        PaymentType payment = paymentTypeService.findBy(strategy.getStrategyName(), "paymentType");
//        computer.setConfig(build);
//        customer.setUser(user);
//        customer.setCustomerNumber("CUS_0001");
//
//        receipt.setPaymentType(payment);
//        receipt.setCustomer(customer);
//        receipt.setDeliveryDate(LocalDate.now().plusWeeks(2));
//        receipt.setComputers(new HashSet<Computer>() {{
//            add(computer);
//        }});
//        strategy.pay(receipt);
    }
}
