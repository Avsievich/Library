package ru.javabegin.trainin.springlibrary.entities;

public class Vote {
    private int idVote;
    private String username;
    private int idBookVote;

    public int getIdVote() {
        return idVote;
    }

    public void setIdVote(int idVote) {
        this.idVote = idVote;
    }

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public int getIdBookVote() {
        return idBookVote;
    }

    public void setIdBookVote(int idBookVote) {
        this.idBookVote = idBookVote;
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;

        Vote vote = (Vote) o;

        if (idVote != vote.idVote) return false;
        if (idBookVote != vote.idBookVote) return false;
        if (username != null ? !username.equals(vote.username) : vote.username != null) return false;

        return true;
    }

    @Override
    public int hashCode() {
        int result = idVote;
        result = 31 * result + (username != null ? username.hashCode() : 0);
        result = 31 * result + idBookVote;
        return result;
    }
}
