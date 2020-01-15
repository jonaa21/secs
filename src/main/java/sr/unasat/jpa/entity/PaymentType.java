package sr.unasat.jpa.entity;

import sr.unasat.jpa.entity.enums.PaymentTypeName;

import javax.persistence.*;
import java.util.Objects;

@Table(name = "payment_type")
@Entity
public class PaymentType {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    @Enumerated(EnumType.STRING)
    @Column(name = "name", nullable = false)
    private PaymentTypeName paymentTypeName;

    public PaymentType() {
    }

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public PaymentTypeName getName() {
        return paymentTypeName;
    }

    public void setName(PaymentTypeName paymentTypeName) {
        this.paymentTypeName = paymentTypeName;
    }

    @Override
    public boolean equals(Object object) {
        if (this == object) return true;
        if (object == null || getClass() != object.getClass()) return false;
        PaymentType that = (PaymentType) object;
        return getName().equals(that.getName());
    }

    @Override
    public int hashCode() {
        return Objects.hash(getName());
    }

    @Override
    public String toString() {
        return "PaymentType{" +
                       "name='" + paymentTypeName + '\'' +
                       '}';
    }
}
