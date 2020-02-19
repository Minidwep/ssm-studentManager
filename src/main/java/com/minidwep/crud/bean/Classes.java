package com.minidwep.crud.bean;

public class Classes {
    private Integer classesId;

    private String classesName;

    private String classesDate;

    private String classesSpecialty;

    private String classesDirection;

    public Integer getClassesId() {
        return classesId;
    }

    public void setClassesId(Integer classesId) {
        this.classesId = classesId;
    }

    public String getClassesName() {
        return classesName;
    }

    public void setClassesName(String classesName) {
        this.classesName = classesName == null ? null : classesName.trim();
    }

    public String getClassesDate() {
        return classesDate;
    }

    public void setClassesDate(String classesDate) {
        this.classesDate = classesDate == null ? null : classesDate.trim();
    }

    public String getClassesSpecialty() {
        return classesSpecialty;
    }

    public void setClassesSpecialty(String classesSpecialty) {
        this.classesSpecialty = classesSpecialty == null ? null : classesSpecialty.trim();
    }

    public String getClassesDirection() {
        return classesDirection;
    }

    public void setClassesDirection(String classesDirection) {
        this.classesDirection = classesDirection == null ? null : classesDirection.trim();
    }
}