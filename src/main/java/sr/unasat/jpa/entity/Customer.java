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

    @Column(name = "user_name", nullable = false, unique = true)
    private String userName;

    public Customer() {
    }

    public Customer(User user, String userName) {
        this.user = user;
        this.userName = userName;
    }

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

    public String getUserName() {
        return userName;
    }

    public void setUserName(String customerNumber) {
        this.userName = customerNumber;
    }

    @Override
    public boolean equals(Object object) {
        if (this == object) return true;
        if (object == null || getClass() != object.getClass()) return false;
        Customer customer = (Customer) object;
        return getUser().equals(customer.getUser()) &&
                       getUserName().equals(customer.getUserName());
    }

    @Override
    public int hashCode() {
        return Objects.hash(getUser(), getUserName());
    }

    @Override
    public String toString() {
        return "Customer{" +
                       "user=" + user +
                       ", userName='" + userName + '\'' +
                       '}';
    }
}
