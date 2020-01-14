package sr.unasat.jpa.entity;

import com.fasterxml.jackson.annotation.JsonBackReference;

import javax.persistence.*;
import java.util.List;

@Table(name = "computer_config")
@Entity
public class ComputerConfig {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    @OneToMany(cascade = CascadeType.ALL, orphanRemoval = true)
    @JoinTable(name = "hardware_config",
            joinColumns = {@JoinColumn(name = "config_id", nullable = false)},
            inverseJoinColumns = {@JoinColumn(name = "hardware_id")})
    private List<Hardware> hardwareList;

    @JsonBackReference
    @OneToOne(mappedBy = "config")
    private Computer computer;

    private boolean bluetooth;

    private boolean thunderbolt;

    private boolean lte;

    @Column(name = "touch_screen")
    private boolean touchScreen;

    @Column(name = "two_in_one")
    private boolean twoInOne;

    @Column(name = "sub_total")
    private Double subTotal;

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

    public boolean isBluetooth() {
        return bluetooth;
    }

    public void setBluetooth(boolean bluetooth) {
        this.bluetooth = bluetooth;
    }

    public boolean isThunderbolt() {
        return thunderbolt;
    }

    public void setThunderbolt(boolean thunderbolt) {
        this.thunderbolt = thunderbolt;
    }

    public boolean isLte() {
        return lte;
    }

    public void setLte(boolean lte) {
        this.lte = lte;
    }

    public boolean isTouchScreen() {
        return touchScreen;
    }

    public void setTouchScreen(boolean touchScreen) {
        this.touchScreen = touchScreen;
    }

    public boolean isTwoInOne() {
        return twoInOne;
    }

    public void setTwoInOne(boolean twoInOne) {
        this.twoInOne = twoInOne;
    }

    public Double getSubTotal() {
        return subTotal;
    }

    public void setSubTotal(Double subTotal) {
        this.subTotal = subTotal;
    }
}
