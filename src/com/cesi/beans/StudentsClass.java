package com.cesi.beans;

public class StudentsClass {
    private int Id;
    private String name;
    private int placeNumber;

    public StudentsClass(){
        super();
    }

    public StudentsClass(int id, String name, int placeNumber) {
        Id = id;
        this.name = name;
        this.placeNumber = placeNumber;
    }

    public int getId() {
        return Id;
    }

    public void setId(int id) {
        Id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public int getPlaceNumber() {
        return placeNumber;
    }

    public void setPlaceNumber(int placeNumber) {
        this.placeNumber = placeNumber;
    }
}
