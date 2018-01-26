package ru.javabegin.trainin.springlibrary.entities;

import java.sql.Date;

public class Avtor {
    private String name;
    private int idAvtor;
    private Date birthday;

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public int getIdAvtor() {
        return idAvtor;
    }

    public void setIdAvtor(int idAvtor) {
        this.idAvtor = idAvtor;
    }

    public Date getBirthday() {
        return birthday;
    }

    public void setBirthday(Date birthday) {
        this.birthday = birthday;
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;

        Avtor avtor = (Avtor) o;

        if (idAvtor != avtor.idAvtor) return false;
        if (name != null ? !name.equals(avtor.name) : avtor.name != null) return false;
        if (birthday != null ? !birthday.equals(avtor.birthday) : avtor.birthday != null) return false;

        return true;
    }

    @Override
    public int hashCode() {
        int result = name != null ? name.hashCode() : 0;
        result = 31 * result + idAvtor;
        result = 31 * result + (birthday != null ? birthday.hashCode() : 0);
        return result;
    }
}
