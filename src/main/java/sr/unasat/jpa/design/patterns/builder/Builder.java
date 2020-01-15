package sr.unasat.jpa.design.patterns.builder;

import sr.unasat.jpa.entity.Computer;
import sr.unasat.jpa.entity.ComputerConfig;
import sr.unasat.jpa.entity.Hardware;

public interface Builder {

    Double getPrice();

    ComputerBuilder setMemory(Hardware memory);

    ComputerBuilder setGpu(Hardware gpu);

    ComputerBuilder setStorage(Hardware storage);

    ComputerBuilder setCpu(Hardware cpu);

    ComputerBuilder withBluetooth();

    ComputerBuilder withThunderbolt();

    ComputerBuilder withLte();

    ComputerBuilder withTouchScreen();

    ComputerBuilder withTwoInOne();

    ComputerConfig build();

    ComputerConfig build(Computer computer);
}
