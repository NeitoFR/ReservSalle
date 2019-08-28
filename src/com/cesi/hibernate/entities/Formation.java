package com.cesi.hibernate.entities;

import javax.persistence.Entity;
import javax.persistence.Table;
import javax.persistence.UniqueConstraint;

@Entity
@Table(name = "formation",
        uniqueConstraints = { @UniqueConstraint(columnNames = { "idFormation" }) })
public class Formation {
}
