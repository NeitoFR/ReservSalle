package com.cesi.beans;

public class Role {
    private int id;
    private String description;
    private String name;
    private String shortName;

    public Role(){
        super();
    }

    public Role(int id, String description, String name, String shortName) {
        this.id = id;
        this.description = description;
        this.name = name;
        this.shortName = shortName;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getShortName() {
        return shortName;
    }

    public void setShortName(String shortName) {
        this.shortName = shortName;
    }
}
