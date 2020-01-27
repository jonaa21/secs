package sr.unasat.jpa.design.patterns.decorator;

import sr.unasat.jpa.entity.Computer;

public class BasicComputerImpl implements BasicComputer {

    protected Computer computer;

    @Override
    public Computer decorateComputer() {
        return computer;
    }

}
