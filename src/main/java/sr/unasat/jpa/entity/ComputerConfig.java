package sr.unasat.jpa.entity;

import javax.persistence.*;
import java.util.List;

@Table(name = "computer_config")
@Entity
public class ComputerConfig {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    @ManyToMany(cascade = CascadeType.ALL)
    @JoinTable(name = "hardware_config",
            joinColumns = {@JoinColumn(name = "config_id", nullable = false)},
            inverseJoinColumns = {@JoinColumn(name = "hardware_id")})
    private List<Hardware> hardwareList;

    @OneToOne(mappedBy = "config")
    private Computer computer;

    protected boolean bluetooth;

    protected boolean thunderbolt;

    protected boolean lte;

    @Column(name = "touch_screen")
    protected boolean touchScreen;

    @Column(name = "two_in_one")
    protected boolean twoInOne;

    public ComputerConfig() {

    }

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public List<Hardware> getHardwareList() {
        return hardwareList;
    }

    public void setHardwareList(List<Hardware> hardware) {
        this.hardwareList = hardware;
    }

    public Computer getComputer() {
        return computer;
    }

    public void setComputer(Computer computer) {
        this.computer = computer;
    }
}
