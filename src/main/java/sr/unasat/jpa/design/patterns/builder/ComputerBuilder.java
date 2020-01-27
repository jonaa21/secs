package sr.unasat.jpa.design.patterns.builder;

import sr.unasat.jpa.controller.AppController;
import sr.unasat.jpa.entity.Computer;
import sr.unasat.jpa.entity.ComputerConfig;
import sr.unasat.jpa.entity.Hardware;
import sr.unasat.jpa.entity.HardwareStock;
import sr.unasat.jpa.entity.enums.CategoryName;
import sr.unasat.jpa.service.impl.HardwareStockService;

import java.util.ArrayList;
import java.util.List;

public class ComputerBuilder implements Builder {

    private Double price = 0.00D;
    private Hardware memory, gpu, storage, cpu;
    private boolean bluetooth, thunderbolt, lte, touchScreen, twoInOne;
    private HardwareStockService stockService = AppController.getAppController().getHardwareStockService();

    @Override
    public Double getPrice() {
        return this.price;
    }

    @Override
    public ComputerBuilder setMemory(Hardware memory) {
        if (validateHardware(memory, CategoryName.RAM)) this.memory = memory;
        return this;
    }

    @Override
    public ComputerBuilder setGpu(Hardware gpu) {
        if (validateHardware(gpu, CategoryName.GPU)) this.gpu = gpu;
        return this;
    }

    @Override
    public ComputerBuilder setStorage(Hardware storage) {
        if (validateHardware(storage, CategoryName.STORAGE)) this.storage = storage;
        return this;
    }

    @Override
    public ComputerBuilder setCpu(Hardware cpu) {
        if (validateHardware(cpu, CategoryName.CPU)) this.cpu = cpu;
        return this;
    }

    @Override
    public ComputerBuilder setMemory(HardwareStock memory, int amount) {
        return setMemory(new Hardware(memory, amount));
    }

    @Override
    public ComputerBuilder setGpu(HardwareStock gpu, int amount) {
        return setGpu(new Hardware(gpu, amount));
    }

    @Override
    public ComputerBuilder setStorage(HardwareStock storage, int amount) {
        return setStorage(new Hardware(storage, amount));
    }

    @Override
    public ComputerBuilder setCpu(HardwareStock cpu, int amount) {
        return setCpu(new Hardware(cpu, amount));
    }

    @Override
    public ComputerBuilder withBluetooth(boolean bluetooth) {
        this.bluetooth = bluetooth;
        this.price += 30.00D;
        return this;
    }

    @Override
    public ComputerBuilder withThunderbolt(boolean thunderbolt) {
        this.thunderbolt = thunderbolt;
        this.price += 45.00D;
        return this;
    }

    @Override
    public ComputerBuilder withLte(boolean lte) {
        this.lte = lte;
        this.price += 65.00D;
        return this;
    }

    @Override
    public ComputerBuilder withTouchScreen(boolean touchScreen) {
        this.touchScreen = touchScreen;
        this.price += 110.00D;
        return this;
    }

    @Override
    public ComputerBuilder withTwoInOne(boolean twoInOne) {
        this.twoInOne = twoInOne;
        this.price += 60.00D;
        return this;
    }

    @Override
    public ComputerConfig build() {
        return getConfig();
    }

    @Override
    public ComputerConfig build(Computer computer) {
        ComputerConfig config = getConfig();
        config.setComputer(computer);
        return config;
    }

    private ComputerConfig getConfig() {
        final ComputerConfig config = new ComputerConfig();
        List<Hardware> hardwareList = new ArrayList<Hardware>() {{
            if (memory != null) add(memory);
            if (gpu != null) add(gpu);
            if (cpu != null) add(cpu);
            if (storage != null) add(storage);
        }};

        config.setHardwareList(hardwareList);
        config.setBluetooth(bluetooth);
        config.setThunderbolt(thunderbolt);
        config.setLte(lte);
        config.setTouchScreen(touchScreen);
        config.setTwoInOne(twoInOne);
        config.setSubTotal(this.price);

        return config;
    }

    private boolean validateHardware(Hardware hardware, CategoryName specifiedCategory) {
        if (hardware != null) {
            if (hardware.getHardwareStock().getCategory().getCategoryName().equals(specifiedCategory) &&
                        stockService.canAddHardware(hardware)) {
                stockService.getDao().commitTransaction();
                return true;
            }

            throw new RuntimeException(String.format("Selected hardware [%1$s] does not match for specified category [%2$s]",
                    hardware.getHardwareStock().getName(), specifiedCategory));
        }
        return false;
    }
}
