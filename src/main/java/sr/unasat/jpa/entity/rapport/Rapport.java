package sr.unasat.jpa.entity.rapport;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;

public class Rapport {

    public Rapport() {
    }

    @Entity
    public static class ReceiptPerYear {

        @Id
        private Long id;

        @Column
        private Long aantal;

        @Column
        private Integer year;

        @Column
        private Integer quarter;

        public ReceiptPerYear() {
        }

        public Long getId() {
            return id;
        }

        public void setId(Long id) {
            this.id = id;
        }

        public Long getAantal() {
            return aantal;
        }

        public void setAantal(Long aantal) {
            this.aantal = aantal;
        }

        public Integer getYear() {
            return year;
        }

        public void setYear(Integer year) {
            this.year = year;
        }

        public Integer getQuarter() {
            return quarter;
        }

        public void setQuarter(Integer quarter) {
            this.quarter = quarter;
        }
    }

    @Entity
    public static class MostSoldHardware {

        @Id
        private Long id;

        @Column
        private int amount;

        @Column
        private String hardwareName;

        @Column
        private Double size;

        @Column
        private String brand;

        @Column
        private String category;

        public MostSoldHardware() {
        }

        public Long getId() {
            return id;
        }

        public void setId(Long id) {
            this.id = id;
        }

        public int getAmount() {
            return amount;
        }

        public void setAmount(int amount) {
            this.amount = amount;
        }

        public String getHardwareName() {
            return hardwareName;
        }

        public void setHardwareName(String hardwareName) {
            this.hardwareName = hardwareName;
        }

        public Double getSize() {
            return size;
        }

        public void setSize(Double size) {
            this.size = size;
        }

        public String getBrand() {
            return brand;
        }

        public void setBrand(String brand) {
            this.brand = brand;
        }

        public String getCategory() {
            return category;
        }

        public void setCategory(String category) {
            this.category = category;
        }
    }

    @Entity
    public static class MostChosenPaymentMethod {

        @Id
        private Long id;

        @Column
        private int amount;

        @Column(name = "payment_name")
        private String paymentName;

        public MostChosenPaymentMethod() {
        }

        public Long getId() {
            return id;
        }

        public void setId(Long id) {
            this.id = id;
        }

        public int getAmount() {
            return amount;
        }

        public void setAmount(int amount) {
            this.amount = amount;
        }

        public String getPaymentName() {
            return paymentName;
        }

        public void setPaymentName(String paymentName) {
            this.paymentName = paymentName;
        }
    }
}
