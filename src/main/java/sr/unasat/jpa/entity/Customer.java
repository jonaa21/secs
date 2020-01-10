package sr.unasat.jpa.entity;

import javax.persistence.*;
import java.util.Objects;

@Table
@Entity
public class Customer {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    @ManyToOne(cascade = {CascadeType.PERSIST, CascadeType.MERGE})
    private User user;

    @Column(nullable = false, unique = true)
    private String customerNumber;

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public User getUser() {
        return user;
    }

    public void setUser(User user) {
        this.user = user;
    }

    public String getCustomerNumber() {
        return customerNumber;
    }

    public void setCustomerNumber(String customerNumber) {
        this.customerNumber = customerNumber;
    }

    @Override
    public boolean equals(Object object) {
        if (this == object) return true;
        if (object == null || getClass() != object.getClass()) return false;
        Customer customer = (Customer) object;
        return getUser().equals(customer.getUser()) &&
                       getCustomerNumber().equals(customer.getCustomerNumber());
    }

    @Override
    public int hashCode() {
        return Objects.hash(getUser(), getCustomerNumber());
    }

    @Override
    public String toString() {
        return "Customer{" +
                       "user=" + user +
                       ", customerNumber='" + customerNumber + '\'' +
                       '}';
    }
}
