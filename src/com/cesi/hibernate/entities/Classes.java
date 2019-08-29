package com.cesi.hibernate.entities;

import javax.persistence.Basic;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;
import javax.persistence.UniqueConstraint;

import com.sun.istack.internal.NotNull;

@Entity
@Table(name = "CLASSES",
        uniqueConstraints = { @UniqueConstraint(columnNames = { "id_Classe" }) })
public class Classes {
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Basic(optional = false)
	@NotNull
	@Column(name="id_Classe")
	private int id_Classe;
	@Column(name="nom_Classe")
	private	String nom_Classe;
	@Column(name="nb_Etudiant")
	private int nb_Etudiant;

	public Classes() {
		super();
	}
	
	public int getId_Classe() {
		return id_Classe;
	}
	public void setId_Classe(int id_Classe) {
		this.id_Classe = id_Classe;
	}
	
	public String getNom_Classe() {
		return nom_Classe;
	}
	public void setNom_Classe(String nom_Classe) {
		this.nom_Classe = nom_Classe;
	}
	
	public int getNb_Etudiant() {
		return nb_Etudiant;
	}
	public void setNb_Etudiant(int nb_Etudiant) {
		this.nb_Etudiant = nb_Etudiant;
	}
	
}
