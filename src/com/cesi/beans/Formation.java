package com.cesi.beans;

import java.util.ArrayList;
import java.util.Date;

public class Formation {
    private String name;
    private Date startDate;
    private Date endDate;
    private boolean sameRoom;
    private ArrayList<Room> roomList;
    private ArrayList<Formater> formaterList;
    private ArrayList<StudentsClass> studentsClassList;

    public Formation(String name, Date startDate, Date endDate, boolean sameRoom, ArrayList<Formater> formaterList, ArrayList<StudentsClass> studentsClassList) {
        this.name = name;
        this.startDate = startDate;
        this.endDate = endDate;
        this.sameRoom = sameRoom;
        this.formaterList = formaterList;
        this.studentsClassList = studentsClassList;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public Date getStartDate() {
        return startDate;
    }

    public void setStartDate(Date startDate) {
        this.startDate = startDate;
    }

    public Date getEndDate() {
        return endDate;
    }

    public void setEndDate(Date endDate) {
        this.endDate = endDate;
    }

    public boolean isSameRoom() {
        return sameRoom;
    }

    public void setSameRoom(boolean sameRoom) {
        this.sameRoom = sameRoom;
    }

    public ArrayList<Formater> getFormaterList() {
        return formaterList;
    }

    public void setFormaterList(ArrayList<Formater> formaterList) {
        this.formaterList = formaterList;
    }

    public ArrayList<StudentsClass> getStudentsClassList() {
        return studentsClassList;
    }

    public void setStudentsClassList(ArrayList<StudentsClass> studentsClassList) {
        this.studentsClassList = studentsClassList;
    }
}
