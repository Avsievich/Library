package ru.javabegin.trainin.springlibrary.entities;

public class Publisher {
    private String name;
    private int idPublisher;

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public int getIdPublisher() {
        return idPublisher;
    }

    public void setIdPublisher(int idPublisher) {
        this.idPublisher = idPublisher;
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;

        Publisher publisher = (Publisher) o;

        if (idPublisher != publisher.idPublisher) return false;
        if (name != null ? !name.equals(publisher.name) : publisher.name != null) return false;

        return true;
    }

    @Override
    public int hashCode() {
        int result = name != null ? name.hashCode() : 0;
        result = 31 * result + idPublisher;
        return result;
    }
}
