package sr.unasat.jpa.designPatterns.builder;

import sr.unasat.jpa.entity.Computer;
import sr.unasat.jpa.entity.ComputerConfig;
import sr.unasat.jpa.entity.Hardware;

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
        this.memory = memory;
        return this;
    }

    @Override
    public ComputerBuilder setGpu(Hardware gpu) {
        this.gpu = gpu;
        return this;
    }

    @Override
    public ComputerBuilder setStorage(Hardware storage) {
        this.storage = storage;
        return this;
    }

    @Override
    public ComputerBuilder setCpu(Hardware cpu) {
        this.cpu = cpu;
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
}
