package sr.unasat.jpa.design.patterns.decorator;

import sr.unasat.jpa.entity.enums.SpecStatus;

public class HomeComputer extends ComputerDecorator {

    public HomeComputer(BasicComputer baseComputer) {
        super(baseComputer, SpecStatus.LOW);
        System.out.println("Adding computer hardware for home use");
    }
}
