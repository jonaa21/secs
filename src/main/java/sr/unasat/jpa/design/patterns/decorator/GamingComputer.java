package sr.unasat.jpa.design.patterns.decorator;

import sr.unasat.jpa.entity.enums.SpecStatus;

public class GamingComputer extends ComputerDecorator {

    public GamingComputer(BasicComputer basicComputer) {
        super(basicComputer, SpecStatus.HIGH);
        System.out.println("Adding computer hardware for gaming purposes");
    }
}
