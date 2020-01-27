package sr.unasat.jpa.entity;

import javax.persistence.*;
import java.util.Objects;

@Table(name = "hardware")
@Entity
public class Hardware {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    @OneToOne
    @JoinColumn(name = "stock_id")
    private HardwareStock hardwareStock;

    private Integer amount;

    public Hardware() {
    }

    public Hardware(HardwareStock hardwareStock, Integer amount) {
        this.hardwareStock = hardwareStock;
        this.amount = amount;
    }

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public HardwareStock getHardwareStock() {
        return hardwareStock;
    }

    public Integer getAmount() {
        return amount;
    }

    @Override
    public boolean equals(Object object) {
        if (this == object) return true;
        if (object == null || getClass() != object.getClass()) return false;
        Hardware hardware = (Hardware) object;
        return Objects.equals(getId(), hardware.getId()) &&
                       getHardwareStock().equals(hardware.getHardwareStock()) &&
                       getAmount().equals(hardware.getAmount());
    }

    @Override
    public int hashCode() {
        return Objects.hash(getId(), getHardwareStock(), getAmount());
    }

    @Override
    public String toString() {
        return "Hardware{" +
                       "\nhardwareStock=" + hardwareStock.toString() +
                       "\namount=" + amount +
                       "}\n";
    }
}
