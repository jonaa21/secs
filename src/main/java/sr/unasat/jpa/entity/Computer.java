package sr.unasat.jpa.entity;

import com.fasterxml.jackson.annotation.JsonIgnore;
import sr.unasat.jpa.entity.enums.CategoryName;

import javax.persistence.*;
import java.util.Set;

@Table
@Entity
public class Computer {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    @Column(name = "storage_type", nullable = false)
    private String storageType;

    @Column(nullable = false)
    private Double price;

    @ManyToMany(cascade = {CascadeType.MERGE, CascadeType.PERSIST})
    @JoinTable(name = "receipt_computer",
            joinColumns = @JoinColumn(name = "receipt_id", referencedColumnName = "id", columnDefinition = "BIGINT(20)"),
            inverseJoinColumns = @JoinColumn(name = "computers_id", referencedColumnName = "id", columnDefinition = "BIGINT(20)"))
    private Set<Receipt> receipts;

    @JsonIgnore
    @OneToOne(cascade = {CascadeType.PERSIST, CascadeType.MERGE})
    @JoinColumn(name = "config_id")
    private ComputerConfig computerConfig;

    public Computer() {

    }

    public Computer(ComputerConfig config) {
        this.setComputerConfig(config);
    }

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public String getStorageType() {
        return storageType;
    }

    public void setStorageType(String storageType) {
        this.storageType = storageType;
    }

    public Double getPrice() {
        return price;
    }

    public void setPrice(Double price) {
        this.price = price;
    }

    public Set<Receipt> getReceipts() {
        return receipts;
    }

    public void setReceipts(Set<Receipt> receipts) {
        this.receipts = receipts;
    }

    public ComputerConfig getComputerConfig() {
        return computerConfig;
    }

    public void setComputerConfig(ComputerConfig config) {
        this.computerConfig = config;

        if (this.storageType == null) {
            config.getHardwareList()
                    .stream()
                    .map(Hardware::getHardwareStock)
                    .filter(stock -> stock.getCategory().getCategoryName().equals(CategoryName.STORAGE) &&
                                             (stock.getName().equalsIgnoreCase("SSD") || stock.getName().equalsIgnoreCase("HDD")))
                    .findFirst()
                    .ifPresent(stock -> this.setStorageType(stock.getName()));
        }

        calculatePrice();
    }

    private void calculatePrice() {
        if (this.price == null) {
            this.price = 0D;
        }

        this.price += this.computerConfig.getSubTotal();
        this.computerConfig.getHardwareList()
                .forEach(hardware -> this.price += hardware.getHardwareStock().getPrice() * hardware.getAmount());
    }

    @Override
    public String toString() {
        return "Computer{" +
                       "storageType='" + storageType +
                       "\nprice=" + price +
                       "\ncomputerConfig=" + computerConfig.toString() +
                       '}';
    }
}
