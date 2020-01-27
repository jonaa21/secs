package sr.unasat.jpa.design.patterns.decorator;

import sr.unasat.jpa.entity.enums.SpecStatus;

public class BusinessComputer extends ComputerDecorator {

    public BusinessComputer(BasicComputer basicComputer) {
        super(basicComputer, SpecStatus.MEDIUM);
        System.out.println("Adding computer hardware for business purposes");


    }
}
