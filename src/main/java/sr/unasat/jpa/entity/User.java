package sr.unasat.jpa.entity;

import javax.persistence.*;
import java.util.Objects;

@Entity
@Table
public class User {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    @Column(name = "firstname", nullable = false)
    private String firstName;

    @Column(name = "lastname", nullable = false)
    private String lastName;

    @Column(name = "id_number", unique = true, nullable = false)
    private String idNumber;

    @ManyToOne
    private Role role;

    @Column(nullable = false)
    private Double balance;

    public User() {
    }

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public String getFirstName() {
        return firstName;
    }

    public void setFirstName(String firstName) {
        this.firstName = firstName;
    }

    public String getLastName() {
        return lastName;
    }

    public void setLastName(String lastName) {
        this.lastName = lastName;
    }

    public String getIdNumber() {
        return idNumber;
    }

    public void setIdNumber(String idNumber) {
        this.idNumber = idNumber;
    }

    public Role getRole() {
        return role;
    }

    public void setRole(Role role) {
        this.role = role;
    }

    public Double getBalance() {
        return balance;
    }

    public void setBalance(Double balance) {
        this.balance = balance;
    }

    @Override
    public boolean equals(Object object) {
        if (this == object) return true;
        if (object == null || getClass() != object.getClass()) return false;
        User user = (User) object;
        return getFirstName().equals(user.getFirstName()) &&
                       getLastName().equals(user.getLastName()) &&
                       getIdNumber().equals(user.getIdNumber());
    }

    @Override
    public int hashCode() {
        return Objects.hash(getFirstName(), getLastName(), getIdNumber());
    }

    @Override
    public String toString() {
        return "User{" +
                       "firstName='" + firstName + '\'' +
                       ", lastName='" + lastName + '\'' +
                       ", idNumber='" + idNumber + '\'' +
                       '}';
    }
}
