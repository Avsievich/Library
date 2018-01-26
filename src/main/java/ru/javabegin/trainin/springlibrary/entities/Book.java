package ru.javabegin.trainin.springlibrary.entities;

public class Book {
    private String name;
    private String content;
    private int pageCount;
    private String isbn;
    private Integer publishYear;
    private String descr;
    private Integer rating;
    private Integer voteCount;
    private int idBook;
    private int authorIdBook;
    private int genreIdBook;
    private int publisherIdBook;

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getContent() {
        return content;
    }

    public void setContent(String content) {
        this.content = content;
    }

    public int getPageCount() {
        return pageCount;
    }

    public void setPageCount(int pageCount) {
        this.pageCount = pageCount;
    }

    public String getIsbn() {
        return isbn;
    }

    public void setIsbn(String isbn) {
        this.isbn = isbn;
    }

    public Integer getPublishYear() {
        return publishYear;
    }

    public void setPublishYear(Integer publishYear) {
        this.publishYear = publishYear;
    }

    public String getDescr() {
        return descr;
    }

    public void setDescr(String descr) {
        this.descr = descr;
    }

    public Integer getRating() {
        return rating;
    }

    public void setRating(Integer rating) {
        this.rating = rating;
    }

    public Integer getVoteCount() {
        return voteCount;
    }

    public void setVoteCount(Integer voteCount) {
        this.voteCount = voteCount;
    }

    public int getIdBook() {
        return idBook;
    }

    public void setIdBook(int idBook) {
        this.idBook = idBook;
    }

    public int getAuthorIdBook() {
        return authorIdBook;
    }

    public void setAuthorIdBook(int authorIdBook) {
        this.authorIdBook = authorIdBook;
    }

    public int getGenreIdBook() {
        return genreIdBook;
    }

    public void setGenreIdBook(int genreIdBook) {
        this.genreIdBook = genreIdBook;
    }

    public int getPublisherIdBook() {
        return publisherIdBook;
    }

    public void setPublisherIdBook(int publisherIdBook) {
        this.publisherIdBook = publisherIdBook;
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;

        Book book = (Book) o;

        if (pageCount != book.pageCount) return false;
        if (idBook != book.idBook) return false;
        if (authorIdBook != book.authorIdBook) return false;
        if (genreIdBook != book.genreIdBook) return false;
        if (publisherIdBook != book.publisherIdBook) return false;
        if (name != null ? !name.equals(book.name) : book.name != null) return false;
        if (content != null ? !content.equals(book.content) : book.content != null) return false;
        if (isbn != null ? !isbn.equals(book.isbn) : book.isbn != null) return false;
        if (publishYear != null ? !publishYear.equals(book.publishYear) : book.publishYear != null) return false;
        if (descr != null ? !descr.equals(book.descr) : book.descr != null) return false;
        if (rating != null ? !rating.equals(book.rating) : book.rating != null) return false;
        if (voteCount != null ? !voteCount.equals(book.voteCount) : book.voteCount != null) return false;

        return true;
    }

    @Override
    public int hashCode() {
        int result = name != null ? name.hashCode() : 0;
        result = 31 * result + (content != null ? content.hashCode() : 0);
        result = 31 * result + pageCount;
        result = 31 * result + (isbn != null ? isbn.hashCode() : 0);
        result = 31 * result + (publishYear != null ? publishYear.hashCode() : 0);
        result = 31 * result + (descr != null ? descr.hashCode() : 0);
        result = 31 * result + (rating != null ? rating.hashCode() : 0);
        result = 31 * result + (voteCount != null ? voteCount.hashCode() : 0);
        result = 31 * result + idBook;
        result = 31 * result + authorIdBook;
        result = 31 * result + genreIdBook;
        result = 31 * result + publisherIdBook;
        return result;
    }
}
