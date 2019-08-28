package com.cesi.hibernate.entities;

import com.cesi.beans.StudentsClass;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;
import javax.persistence.UniqueConstraint;

@Entity
@Table(name = "student",
        uniqueConstraints = { @UniqueConstraint(columnNames = { "id" }) })
public class Student {
    private int id;
    private String firstName;
    private String lastName;
    StudentsClass studentsClass;

    public Student(int id, String firstName, String lastName, StudentsClass studentsClass) {
        this.id = id;
        this.firstName = firstName;
        this.lastName = lastName;
        this.studentsClass = studentsClass;
    }

    @Id
    @Column(name="id")
    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    @Column(name="firstName")
    public String getFirstName() {
        return firstName;
    }

    public void setFirstName(String firstName) {
        this.firstName = firstName;
    }

    @Column(name="lastName")
    public String getLastName() {
        return lastName;
    }

    public void setLastName(String lastName) {
        this.lastName = lastName;
    }

    @Column(name="studentsClass")
    public StudentsClass getStudentsClass() {
        return studentsClass;
    }

    public void setStudentsClass(StudentsClass studentsClass) {
        this.studentsClass = studentsClass;
    }
}
