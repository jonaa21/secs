package sr.unasat.jpa.designPatterns.builder;

import sr.unasat.jpa.entity.Computer;
import sr.unasat.jpa.entity.ComputerConfig;
import sr.unasat.jpa.entity.Hardware;

import java.util.ArrayList;
import java.util.List;

public class Builder {

    private Double price = 0.00D;
    private Hardware memory, gpu, storage, cpu;
    private boolean bluetooth, thunderbolt, lte, touchScreen, twoInOne;

    public Double getPrice() {
        return this.price;
    }

    public Builder setMemory(Hardware memory) {
        this.memory = memory;
        return this;
    }

    public Builder setGpu(Hardware gpu) {
        this.gpu = gpu;
        return this;
    }

    public Builder setStorage(Hardware storage) {
        this.storage = storage;
        return this;
    }

    public Builder setCpu(Hardware cpu) {
        this.cpu = cpu;
        return this;
    }

    public Builder withBluetooth() {
        this.bluetooth = true;
        this.price += 30.00D;
        return this;
    }

    public Builder withThunderbolt() {
        this.thunderbolt = true;
        this.price += 45.00D;
        return this;
    }

    public Builder withLte() {
        this.lte = true;
        this.price += 65.00D;
        return this;
    }

    public Builder withTouchScreen() {
        this.touchScreen = true;
        this.price += 110.00D;
        return this;
    }

    public Builder withTwoInOne() {
        this.twoInOne = true;
        this.price += 60.00D;
        return this;
    }

    public ComputerConfig build() {
        return getConfig();
    }

    public ComputerConfig build(Computer computer) {
            ComputerConfig config = getConfig();
            config.setComputer(computer);
            return config;
        }

    private ComputerConfig getConfig() {
        final ComputerConfig config = new ComputerConfig();
        List<Hardware> hardwareList = new ArrayList<Hardware>() {{
            add(memory);
            add(gpu);
            add(cpu);
            add(storage);
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
