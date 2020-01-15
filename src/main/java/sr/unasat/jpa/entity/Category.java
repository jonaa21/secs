package sr.unasat.jpa.entity;

import sr.unasat.jpa.entity.enums.CategoryName;

import javax.persistence.*;
import java.util.Objects;

@Table
@Entity
public class Category {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    @Column(name = "name", nullable = false)
    @Enumerated(EnumType.STRING)
    private CategoryName categoryName;

    public Category() {
    }

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public CategoryName getCategoryName() {
        return categoryName;
    }

    public void setCategoryName(CategoryName name) {
        this.categoryName = name;
    }

    @Override
    public boolean equals(Object object) {
        if (this == object) return true;
        if (object == null || getClass() != object.getClass()) return false;
        Category category = (Category) object;
        return getCategoryName().equals(category.getCategoryName());
    }

    @Override
    public int hashCode() {
        return Objects.hash(getCategoryName());
    }

    @Override
    public String toString() {
        return "Category{" +
                       "name='" + categoryName + '\'' +
                       '}';
    }
}
