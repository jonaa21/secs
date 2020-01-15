package sr.unasat.jpa.design.patterns.builder;

import sr.unasat.jpa.entity.Computer;
import sr.unasat.jpa.entity.ComputerConfig;
import sr.unasat.jpa.entity.Hardware;
import sr.unasat.jpa.entity.enums.CategoryName;

import java.util.ArrayList;
import java.util.List;

public class ComputerBuilder implements Builder {

    private Double price = 0.00D;
    private Hardware memory, gpu, storage, cpu;
    private boolean bluetooth, thunderbolt, lte, touchScreen, twoInOne;

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
        if (validateHardware(memory, CategoryName.GPU)) this.gpu = gpu;
        return this;
    }

    @Override
    public ComputerBuilder setStorage(Hardware storage) {
        if (validateHardware(memory, CategoryName.STORAGE)) this.storage = storage;
        return this;
    }

    @Override
    public ComputerBuilder setCpu(Hardware cpu) {
        if (validateHardware(memory, CategoryName.CPU)) this.cpu = cpu;
        return this;
    }

    @Override
    public ComputerBuilder withBluetooth() {
        this.bluetooth = true;
        this.price += 30.00D;
        return this;
    }

    @Override
    public ComputerBuilder withThunderbolt() {
        this.thunderbolt = true;
        this.price += 45.00D;
        return this;
    }

    @Override
    public ComputerBuilder withLte() {
        this.lte = true;
        this.price += 65.00D;
        return this;
    }

    @Override
    public ComputerBuilder withTouchScreen() {
        this.touchScreen = true;
        this.price += 110.00D;
        return this;
    }

    @Override
    public ComputerBuilder withTwoInOne() {
        this.twoInOne = true;
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
            if (hardware.getHardwareStock().getCategory().getCategoryName().equals(specifiedCategory)) return true;

            throw new RuntimeException(String.format("Selected hardware [%1$s] does not match for specified category [%2$s]",
                    hardware.getHardwareStock().getName(), specifiedCategory));
        }
        return false;
    }
}
