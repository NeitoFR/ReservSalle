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
@Table(name = "SALLES",
        uniqueConstraints = { @UniqueConstraint(columnNames = { "id_Salle" }) })
public class Salles {
		@Id
	    @GeneratedValue(strategy = GenerationType.IDENTITY)
		@Basic(optional = false)
		@NotNull
	    @Column(name="id_Salle")
        private int id_Salle;
		@Column(name="num_Salle")
        private int num_Salle;
		@Column(name="nom_Salle")
        private String nom_Salle;
		@Column(name="nb_Salle")
        private int nb_Salle;
		@Column(name="type")
        private int type;

		public Salles() {
			super();
		}
        
        public int getId_Salle() {
                return id_Salle;
        }
        public void setId_Salle(int id_Salle) {
                this.id_Salle = id_Salle;
        }
        
        public int getNum_Salle() {
                return num_Salle;
        }
        public void setNum_Salle(int num_Salle) {
                this.num_Salle = num_Salle;
        }
        
        public String getNom_Salle() {
                return nom_Salle;
        }
        public void setNom_Salle(String nom_Salle) {
                this.nom_Salle = nom_Salle;
        }
        
        public int getNb_Salle() {
                return nb_Salle;
        }
        public void setNb_Salle(int nb_Salle) {
                this.nb_Salle = nb_Salle;
        }
        
        public int getType() {
                return type;
        }
        public void setType(int type) {
                this.type = type;
        }

}
