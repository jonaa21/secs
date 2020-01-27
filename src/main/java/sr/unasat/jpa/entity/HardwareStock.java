package sr.unasat.jpa.entity;

import com.fasterxml.jackson.annotation.JsonManagedReference;

import javax.persistence.*;
import java.util.Objects;

@Table(name = "hardware_stock")
@Entity
@NamedStoredProcedureQuery(name = "p_update_hardware_stock", procedureName = "p_update_hardware_stock", parameters = {
        @StoredProcedureParameter(name = "hardware_stock_id", type = Long.class, mode = ParameterMode.IN),
        @StoredProcedureParameter(name = "hardware_amount", type = Integer.class, mode = ParameterMode.IN)
})
public class HardwareStock {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    @Column(nullable = false)
    private String name;

    @Column(nullable = false)
    private Double size;

    @Column(nullable = false)
    private Integer quantity;

    @Column(nullable = false)
    private Double price;

    @ManyToOne
    @JoinColumn(name = "brand_id")
    private Brand brand;

    @JsonManagedReference
    @OneToOne
    @JoinColumn(name = "category_id")
    private Category category;

    @ManyToOne
    @JoinColumn(name = "spec_level_id")
    private SpecLevel specLevel;

    public HardwareStock() {
    }

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public Double getSize() {
        return size;
    }

    public void setSize(Double size) {
        this.size = size;
    }

    public Integer getQuantity() {
        return quantity;
    }

    public void setQuantity(Integer quantity) {
        this.quantity = quantity;
    }

    public Double getPrice() {
        return price;
    }

    public void setPrice(Double price) {
        this.price = price;
    }

    public Brand getBrand() {
        return brand;
    }

    public void setBrand(Brand brand) {
        this.brand = brand;
    }

    public Category getCategory() {
        return category;
    }

    public void setCategory(Category category) {
        this.category = category;
    }

    public SpecLevel getSpecLevel() {
        return specLevel;
    }

    public void setSpecLevel(SpecLevel specLevel) {
        this.specLevel = specLevel;
    }

    @Override
    public boolean equals(Object object) {
        if (this == object) return true;
        if (object == null || getClass() != object.getClass()) return false;
        HardwareStock hardware = (HardwareStock) object;
        return getName().equals(hardware.getName()) &&
                       getPrice().equals(hardware.getPrice()) &&
                       getBrand().equals(hardware.getBrand());
    }

    @Override
    public int hashCode() {
        return Objects.hash(getName(), getPrice(), getBrand());
    }

    @Override
    public String toString() {
        return "HardwareStock{" +
                       "id=" + id +
                       ", name='" + name + '\'' +
                       ", size=" + size +
                       ", quantity=" + quantity +
                       ", price=" + price +
                       ", brand=" + brand +
                       '}';
    }
}
