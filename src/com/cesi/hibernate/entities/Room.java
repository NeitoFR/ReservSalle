package com.cesi.hibernate.entities;

import javax.persistence.*;

@Entity
@Table(name = "room",
        uniqueConstraints = { @UniqueConstraint(columnNames = { "idRoom" }) })
public class Room {
    private int idRoom;
    private String name;
    private int roomNumber;
    private int placeNumber;
    private int idType;

    @Id
    @Column(name="idRoom")
    public int getIdRoom() {
        return idRoom;
    }

    public void setIdRoom(int idRoom) {
        this.idRoom = idRoom;
    }

    @Column(name="name")
    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    @Column(name="roomNumber")
    public int getRoomNumber() {
        return roomNumber;
    }

    public void setRoomNumber(int roomNumber) {
        this.roomNumber = roomNumber;
    }

    @Column(name="placeNumber")
    public int getPlaceNumber() {
        return placeNumber;
    }

    public void setPlaceNumber(int placeNumber) {
        this.placeNumber = placeNumber;
    }

    @Column(name="idType")
    public int getIdType() {
        return idType;
    }

    public void setIdType(int idType) {
        this.idType = idType;
    }
}
