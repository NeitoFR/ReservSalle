package com.cesi.hibernate.entities;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;
import javax.persistence.UniqueConstraint;

@Entity
@Table(name = "FORMATEURS",
        uniqueConstraints = { @UniqueConstraint(columnNames = { "id_Formateur" }) })
public class Formateurs {

        private int id_Formateur;
        private String nom;
        private String mail;
        private String tel;
        
        @Id
        @Column(name="id_Classe")
		public int getId_Formateur() {
			return id_Formateur;
		}
		public void setId_Formateur(int id_Formateur) {
			this.id_Formateur = id_Formateur;
		}
		@Column(name="id_Classe")
		public String getNom() {
			return nom;
		}
		public void setNom(String nom) {
			this.nom = nom;
		}
		@Column(name="id_Classe")
		public String getMail() {
			return mail;
		}
		public void setMail(String mail) {
			this.mail = mail;
		}
		@Column(name="id_Classe")
		public String getTel() {
			return tel;
		}
		public void setTel(String tel) {
			this.tel = tel;
		}       
}
