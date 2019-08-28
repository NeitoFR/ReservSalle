package com.cesi.beans;

public class Formater extends People {
    private int IdFormater;
    private String notes;
    private Role role;

    public Formater(){
        super();
    }

    public Formater(int id, String firstName, String lastName, String notes, Role role) {
        super(id, firstName, lastName);
        this.notes = notes;
        this.role = role;
    }

    public int getIdFormater() {
        return IdFormater;
    }

    public void setIdFormater(int idFormater) {
        IdFormater = idFormater;
    }

    public String getNotes() {
        return notes;
    }

    public void setNotes(String notes) {
        this.notes = notes;
    }

    public Role getRole() {
        return role;
    }

    public void setRole(Role role) {
        this.role = role;
    }
}
