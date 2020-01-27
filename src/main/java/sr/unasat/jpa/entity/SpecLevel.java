package sr.unasat.jpa.entity;

import sr.unasat.jpa.entity.enums.SpecStatus;

import javax.persistence.*;

@Entity
@Table(name = "spec_level")
public class SpecLevel {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    @Enumerated(EnumType.STRING)
    @Column(name = "spec_status", nullable = false)
    private SpecStatus specStatus;
}
