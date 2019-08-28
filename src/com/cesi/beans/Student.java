package com.cesi.beans;

public class Student extends People {
    private StudentsClass studentsClass;

    public Student(int id, String firstName, String lastName, StudentsClass studentsClass) {
        super(id, firstName, lastName);
        this.studentsClass = studentsClass;
    }

    public StudentsClass getStudentsClass() {
        return studentsClass;
    }

    public void setStudentsClass(StudentsClass studentsClass) {
        this.studentsClass = studentsClass;
    }
}
