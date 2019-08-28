package com.cesi.hibernate.entities;

import java.sql.Date;

import javax.persistence.Basic;
import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.OneToOne;
import javax.persistence.Table;
import javax.persistence.UniqueConstraint;

import org.hibernate.annotations.ColumnDefault;

import com.sun.istack.internal.NotNull;

@Entity
@Table(name = "FORMATIONS",
        uniqueConstraints = { @UniqueConstraint(columnNames = { "id_Formation" }) })
public class Formations {
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Basic(optional = false)
	@NotNull
	@Column(name="id_Formation")
	private int id_Formation;
	
	@Column(name="nom_Formation")
	private String nom_Formation;
	
	@Column(name="nb_DemiJournees")
	private int nb_DemiJournees;

	@Column(name="date_Debut")
	private Date date_Debut;
	
	@JoinColumn(name = "id_Salle")
	@OneToOne(cascade = CascadeType.ALL)
	private Salles salle; 
	
	@JoinColumn(name = "id_Formateur")
	@OneToOne(cascade = CascadeType.ALL)
	private Formateurs formateur;
	
	@JoinColumn(name = "id_Classe")
	@OneToOne(cascade = CascadeType.ALL)
	private Classes classe;
	
	@Column(name= "is_ApresMidi")
	@ColumnDefault("false")
	private Boolean is_ApresMidi;
	
	public int getId_Formation() {
		return id_Formation;
	}
	public void setId_Formation(int id_Formation) {
		this.id_Formation = id_Formation;
	}
	
	public String getNom_Formation() {
		return nom_Formation;
	}
	public void setNom_Formation(String nom_Formation) {
		this.nom_Formation = nom_Formation;
	}
	
	public int getNb_DemiJournees() {
		return nb_DemiJournees;
	}
	public void setNb_DemiJournees(int nb_DemiJournees) {
		this.nb_DemiJournees = nb_DemiJournees;
	}
	
	public Date getDate_Debut() {
		return date_Debut;
	}
	public void setDate_Debut(Date date_Debut) {
		this.date_Debut = date_Debut;
	}
	
	
}
