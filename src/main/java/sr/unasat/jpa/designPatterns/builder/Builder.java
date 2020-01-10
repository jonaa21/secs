package sr.unasat.jpa.designPatterns.builder;

import sr.unasat.jpa.entity.ComputerConfig;
import sr.unasat.jpa.entity.Hardware;

public class Builder extends ComputerConfig {

    private Hardware memory, gpu, storage, cpu;

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
        return this;
    }

    public Builder withThunderbolt() {
        this.thunderbolt = true;
        return this;
    }

    public Builder withLte() {
        this.lte = true;
        return this;
    }

    public Builder withTouchScreen() {
        this.touchScreen = true;
        return this;
    }

    public Builder withTwoInOne() {
        this.twoInOne = true;
        return this;
    }

    public boolean getBluetooth() {
        return this.bluetooth;
    }

    public boolean getTouchScreen() {
        return this.touchScreen;
    }

    public boolean getTwoInOne() {
        return this.twoInOne;
    }

    public boolean getLte() {
        return this.lte;
    }

    public boolean getThunderbolt() {
        return this.thunderbolt;
    }

    public ComputerConfig build() {
        return this;
    }
}
