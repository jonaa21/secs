package sr.unasat.jpa.entity;

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

    @ManyToMany(mappedBy = "computers")
    private Set<Receipt> receipts;

    @OneToOne(cascade = {CascadeType.PERSIST, CascadeType.MERGE})
    @JoinColumn(name = "config_id")
    private ComputerConfig config;

    public Computer() {

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

    public ComputerConfig getConfig() {
        return config;
    }

    public void setConfig(ComputerConfig config) {
        this.config = config;
    }
}
