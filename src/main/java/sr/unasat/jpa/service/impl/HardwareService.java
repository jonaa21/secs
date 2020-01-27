package sr.unasat.jpa.service.impl;

import sr.unasat.jpa.dao.HardwareDao;
import sr.unasat.jpa.dao.impl.HardwareDaoImpl;
import sr.unasat.jpa.entity.Hardware;

import javax.persistence.EntityExistsException;
import javax.persistence.EntityManager;

public class HardwareService extends BaseServiceImpl<HardwareDao, Hardware> {

    private HardwareStockService hardwareStockService;

    public HardwareService(EntityManager entityManager) {
        super(new HardwareDaoImpl(entityManager));
        hardwareStockService = new HardwareStockService(entityManager);
    }


    @Override
    public void save(Hardware hardware) throws EntityExistsException {

        boolean canAdd = hardwareStockService.canAddHardware(hardware.getHardwareStock(), hardware.getAmount());

        try {
            if (canAdd) {
                this.getDao().save(hardware);
            }
        } catch (RuntimeException e) {
            this.getDao().rollBackTransaction();
            System.out.println(String.format("Unable to save [%s]", hardware.toString()));
        }
    }
}
