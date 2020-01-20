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

    ComputerBuilder withBluetooth(boolean bluetooth);

    ComputerBuilder withThunderbolt(boolean thunderbolt);

    ComputerBuilder withLte(boolean lte);

    ComputerBuilder withTouchScreen(boolean touchScreen);

    ComputerBuilder withTwoInOne(boolean twoInOne);

    ComputerConfig build();

    ComputerConfig build(Computer computer);
}
