package sr.unasat.jpa.entity;

import sr.unasat.jpa.entity.enums.ReceiptStatus;

import javax.persistence.*;
import java.time.LocalDate;
import java.util.Set;

@Table
@Entity
public class Receipt {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    @ManyToOne
    @JoinColumn(name = "payment_type_id")
    private PaymentType paymentType;

    @ManyToOne
    private Customer customer;

    @Column(name = "total_price", nullable = false)
    private Double totalPrice;

    @Column(name = "delivery_date", nullable = false)
    private LocalDate deliveryDate;

    @ManyToMany(cascade = {CascadeType.PERSIST, CascadeType.MERGE})
    @JoinTable(name = "order", joinColumns = @JoinColumn(name = "computer_id"),
        inverseJoinColumns = @JoinColumn(name = "receipt_id"))
    private Set<Computer> computers;

    @Enumerated(EnumType.STRING)
    @Column(name = "receipt_status", nullable = false)
    private ReceiptStatus receiptStatus;

    public Receipt() {
        this.receiptStatus = ReceiptStatus.NEW;
        this.deliveryDate = LocalDate.now().plusDays(14L);
    }

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public PaymentType getPaymentType() {
        return paymentType;
    }

    public void setPaymentType(PaymentType paymentType) {
        this.paymentType = paymentType;
    }

    public Customer getCustomer() {
        return customer;
    }

    public void setCustomer(Customer customer) {
        this.customer = customer;
    }

    public Double getTotalPrice() {
        return totalPrice;
    }

    public void setTotalPrice(Double totalPrice) {
        this.totalPrice = totalPrice;
    }

    public LocalDate getDeliveryDate() {
        return deliveryDate;
    }

    public void setDeliveryDate(LocalDate deliveryDate) {
        this.deliveryDate = deliveryDate;
    }

    public Set<Computer> getComputers() {
        return computers;
    }

    public void setComputers(Set<Computer> computers) {
        this.computers = computers;
        calculatePrice();
    }

    public ReceiptStatus getReceiptStatus() {
        return receiptStatus;
    }

    public void setReceiptStatus(ReceiptStatus receiptStatus) {
        this.receiptStatus = receiptStatus;
    }

    private void calculatePrice() {
        if (this.totalPrice == null) {
            this.totalPrice = 0D;
        }

        this.computers.forEach(computer -> this.totalPrice += computer.getPrice());
    }
}
