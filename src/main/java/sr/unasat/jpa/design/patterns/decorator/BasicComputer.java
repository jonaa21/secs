package sr.unasat.jpa.design.patterns.decorator;

import sr.unasat.jpa.controller.AppController;
import sr.unasat.jpa.design.patterns.builder.Builder;
import sr.unasat.jpa.design.patterns.builder.ComputerBuilder;
import sr.unasat.jpa.entity.Computer;
import sr.unasat.jpa.service.impl.HardwareStockService;

public interface BasicComputer {

    HardwareStockService stockService = AppController.getAppController().getHardwareStockService();
    Builder computerBuilder = new ComputerBuilder();

    Computer decorateComputer();

}
