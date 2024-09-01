package com.example.helvete.entity;

import jakarta.persistence.*;
import lombok.Data;

@Entity
@Table(name = "voivodeship")
@Data
public class Voivodeship {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "id")
    private int id;

    @Column(name = "name")
    private String name;

    @ManyToOne
    @JoinColumn(name = "country_id")
    private Country country;
}
