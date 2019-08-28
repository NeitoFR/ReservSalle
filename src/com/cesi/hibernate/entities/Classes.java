package com.cesi.hibernate.entities;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;
import javax.persistence.UniqueConstraint;

@Entity
@Table(name = "CLASSES",
        uniqueConstraints = { @UniqueConstraint(columnNames = { "id_Classe" }) })
public class Classes {
	private int id_Classe;
	private	String nom_Classe;
	private int nb_Etudiant;
	
	@Id
	@Column(name="id_Classe")
	public int getId_Classe() {
		return id_Classe;
	}
	public void setId_Classe(int id_Classe) {
		this.id_Classe = id_Classe;
	}
	@Column(name="nom_Classe")
	public String getNom_Classe() {
		return nom_Classe;
	}
	public void setNom_Classe(String nom_Classe) {
		this.nom_Classe = nom_Classe;
	}
	@Column(name="nb_Etudiant")
	public int getNb_Etudiant() {
		return nb_Etudiant;
	}
	public void setNb_Etudiant(int nb_Etudiant) {
		this.nb_Etudiant = nb_Etudiant;
	}
	
}
