package sr.unasat.jpa.app;

import sr.unasat.jpa.config.JPAConfiguration;
import sr.unasat.jpa.designPatterns.builder.Builder;
import sr.unasat.jpa.designPatterns.builder.ComputerBuilder;
import sr.unasat.jpa.designPatterns.strategy.CreditCardStrategy;
import sr.unasat.jpa.designPatterns.strategy.PaymentStrategy;
import sr.unasat.jpa.entity.*;
import sr.unasat.jpa.service.impl.*;

import javax.persistence.EntityManager;
import java.time.LocalDate;
import java.util.HashSet;
import java.util.Set;

public class Application {

    public static void main(String[] args) {

        final EntityManager entityManager = JPAConfiguration.getEntityManager();
        UserService userService = new UserService(entityManager);
        ReceiptService receiptService = new ReceiptService(entityManager);
        PaymentTypeService paymentTypeService = new PaymentTypeService(entityManager);
        ComputerService computerService = new ComputerService(entityManager);
        HardwareStockService hardwareStockService = new HardwareStockService(entityManager);

        Customer customer = new Customer();
        Receipt receipt = new Receipt();
        Computer computer = new Computer();
        Builder builder = new ComputerBuilder();
        HardwareStock stock = hardwareStockService.findById(1L);
        Hardware hardware = new Hardware(stock, 2);

        ComputerConfig build = builder.setMemory(hardware).build();
        User user = userService.findById(1L);
        PaymentStrategy strategy = new CreditCardStrategy(user, "VIA0001", LocalDate.now().plusYears(2L));
        PaymentType payment = paymentTypeService.findById(1L);

        computer.setConfig(build);
        customer.setUser(user);
        customer.setCustomerNumber("CUS_0001");

        Set<Computer> set = new HashSet<>();
        set.add(computer);

        receipt.setPaymentType(payment);
        receipt.setCustomer(customer);
        receipt.setDeliveryDate(LocalDate.now().plusWeeks(2));
        receipt.setComputers(set);
        strategy.pay(receipt);
    }
}
