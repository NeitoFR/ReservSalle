package com.cesi.hibernate.entities;

import javax.persistence.Entity;
import javax.persistence.Table;
import javax.persistence.UniqueConstraint;

@Entity
@Table(name = "FORMATIONS",
        uniqueConstraints = { @UniqueConstraint(columnNames = { "id_Formation" }) })
public class Formations {
	private int id_Formation;
	private String nom_Formation;
	private int nb_DemiJournees;
	
}
