package sr.unasat.jpa.controller;

import sr.unasat.jpa.config.JPAConfiguration;
import sr.unasat.jpa.service.impl.*;

import javax.persistence.EntityManager;

public class AppController {

    private BrandService brandService;
    private CategoryService categoryService;
    private ComputerConfigService computerConfigService;
    private ComputerService computerService;
    private CustomerService customerService;
    private HardwareService hardwareService;
    private HardwareStockService hardwareStockService;
    private PaymentTypeService paymentTypeService;
    private ReceiptService receiptService;
    private RoleService roleService;
    private UserService userService;

    private static AppController appController;

    private AppController() {
        final EntityManager entityManager = JPAConfiguration.getEntityManager();

        //Initialize services
        brandService = new BrandService(entityManager);
        categoryService = new CategoryService(entityManager);
        computerConfigService = new ComputerConfigService(entityManager);
        computerService = new ComputerService(entityManager);
        customerService = new CustomerService(entityManager);
        hardwareService = new HardwareService(entityManager);
        hardwareStockService = new HardwareStockService(entityManager);
        paymentTypeService = new PaymentTypeService(entityManager);
        receiptService = new ReceiptService(entityManager);
        roleService = new RoleService(entityManager);
        userService = new UserService(entityManager);
    }

    public static AppController getAppController() {
        if (appController == null) appController = new AppController();

        return appController;
    }

    public BrandService getBrandService() {
        return brandService;
    }

    public CategoryService getCategoryService() {
        return categoryService;
    }

    public ComputerConfigService getComputerConfigService() {
        return computerConfigService;
    }

    public ComputerService getComputerService() {
        return computerService;
    }

    public CustomerService getCustomerService() {
        return customerService;
    }

    public HardwareService getHardwareService() {
        return hardwareService;
    }

    public HardwareStockService getHardwareStockService() {
        return hardwareStockService;
    }

    public PaymentTypeService getPaymentTypeService() {
        return paymentTypeService;
    }

    public ReceiptService getReceiptService() {
        return receiptService;
    }

    public RoleService getRoleService() {
        return roleService;
    }

    public UserService getUserService() {
        return userService;
    }
}
