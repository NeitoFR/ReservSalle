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
@Table(name = "FORMATEURS",
        uniqueConstraints = { @UniqueConstraint(columnNames = { "id_Formateur" }) })
public class Formateurs {

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Basic(optional = false)
	@NotNull
	@Column(name="id_Formateur")
    private int id_Formateur;
	@Column(name="nom")
    private String nom;
	@Column(name="mail")
    private String mail;
	@Column(name="tel")
    private String tel;

	public Formateurs() {
		super();
	}
    
	public int getId_Formateur() {
		return id_Formateur;
	}
	public void setId_Formateur(int id_Formateur) {
		this.id_Formateur = id_Formateur;
	}
	
	public String getNom() {
		return nom;
	}
	public void setNom(String nom) {
		this.nom = nom;
	}
	
	public String getMail() {
		return mail;
	}
	public void setMail(String mail) {
		this.mail = mail;
	}
	
	public String getTel() {
		return tel;
	}
	public void setTel(String tel) {
		this.tel = tel;
	}       
}
