package sr.unasat.jpa.entity;

import sr.unasat.jpa.designPatterns.builder.Builder;

import javax.persistence.*;

@Table(name = "hardware_config")
@Entity
public class HardwareConfig {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    @ManyToOne
    private Hardware hardware;

    @ManyToOne
    private Computer computer;

    public HardwareConfig() {
    }

    public HardwareConfig(Builder builder) {
    }

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public Hardware getHardware() {
        return hardware;
    }

    public void setHardware(Hardware hardware) {
        this.hardware = hardware;
    }

    public Computer getComputer() {
        return computer;
    }

    public void setComputer(Computer computer) {
        this.computer = computer;
    }
}
