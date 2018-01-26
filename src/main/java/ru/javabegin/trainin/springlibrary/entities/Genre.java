package ru.javabegin.trainin.springlibrary.entities;

public class Genre {
    private int idGenre;
    private String name;
    private int parent;

    public int getIdGenre() {
        return idGenre;
    }

    public void setIdGenre(int idGenre) {
        this.idGenre = idGenre;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public int getParent() {
        return parent;
    }

    public void setParent(int parent) {
        this.parent = parent;
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;

        Genre genre = (Genre) o;

        if (idGenre != genre.idGenre) return false;
        if (parent != genre.parent) return false;
        if (name != null ? !name.equals(genre.name) : genre.name != null) return false;

        return true;
    }

    @Override
    public int hashCode() {
        int result = idGenre;
        result = 31 * result + (name != null ? name.hashCode() : 0);
        result = 31 * result + parent;
        return result;
    }
}
