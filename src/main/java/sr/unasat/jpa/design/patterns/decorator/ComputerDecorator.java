package sr.unasat.jpa.design.patterns.decorator;

import sr.unasat.jpa.entity.Computer;
import sr.unasat.jpa.entity.ComputerConfig;
import sr.unasat.jpa.entity.HardwareStock;
import sr.unasat.jpa.entity.enums.CategoryName;
import sr.unasat.jpa.entity.enums.SpecStatus;

import java.util.Random;

public class ComputerDecorator implements BasicComputer {

    protected BasicComputer basicComputer;
    protected ComputerConfig computerConfig;
    private SpecStatus specStatus;

    public ComputerDecorator(BasicComputer basicComputer, SpecStatus specStatus) {
        this.basicComputer = basicComputer;
        this.specStatus = specStatus;
        System.out.println("Assembled basic computer hardware");
    }

    @Override
    public Computer decorateComputer() {
        HardwareStock storage = this.findHardwareBy(CategoryName.STORAGE, this.specStatus);
        HardwareStock cpu = this.findHardwareBy(CategoryName.CPU, this.specStatus);
        HardwareStock gpu = this.findHardwareBy(CategoryName.GPU, this.specStatus);
        HardwareStock memory = this.findHardwareBy(CategoryName.RAM, this.specStatus);

        computerBuilder
                .setStorage(storage, 1)
                .setGpu(gpu, 1)
                .setMemory(memory, 2)
                .setCpu(cpu, 1);

        switch (this.specStatus) {
            case MEDIUM:
                computerBuilder
                        .withBluetooth(getRandomBoolean())
                        .withTouchScreen(getRandomBoolean())
                        .withThunderbolt(getRandomBoolean())
                        .withTwoInOne(getRandomBoolean())
                        .withLte(getRandomBoolean());
                break;
            case HIGH:
                computerBuilder.withBluetooth(getRandomBoolean())
                        .withTouchScreen(getRandomBoolean())
                        .withThunderbolt(getRandomBoolean())
                        .withTwoInOne(getRandomBoolean());
                break;
            default:
                break;
        }

        this.computerConfig = computerBuilder.build();

        return new Computer(this.computerConfig);
    }

    public HardwareStock findHardwareBy(CategoryName categoryName, SpecStatus specStatus) {
        return stockService.findRandomHardwareBy(categoryName, specStatus);
    }

    private boolean getRandomBoolean() {
        Random random = new Random();
        return random.nextBoolean();
    }
}
