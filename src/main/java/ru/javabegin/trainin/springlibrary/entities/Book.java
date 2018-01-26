package ru.javabegin.trainin.springlibrary.entities;

public class Book {
    private int idBook;
    private String name;
    private int idAvtorBook;
    private String content;
    private int pageCount;
    private String isbn;
    private int idGenreBook;
    private int publishYear;
    private int idPublisherBook;
    private String image;
    private String descr;
    private int rating;
    private long voteCount;

    public int getIdBook() {
        return idBook;
    }

    public void setIdBook(int idBook) {
        this.idBook = idBook;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public int getIdAvtorBook() {
        return idAvtorBook;
    }

    public void setIdAvtorBook(int idAvtorBook) {
        this.idAvtorBook = idAvtorBook;
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

    public int getIdGenreBook() {
        return idGenreBook;
    }

    public void setIdGenreBook(int idGenreBook) {
        this.idGenreBook = idGenreBook;
    }

    public int getPublishYear() {
        return publishYear;
    }

    public void setPublishYear(int publishYear) {
        this.publishYear = publishYear;
    }

    public int getIdPublisherBook() {
        return idPublisherBook;
    }

    public void setIdPublisherBook(int idPublisherBook) {
        this.idPublisherBook = idPublisherBook;
    }

    public String getImage() {
        return image;
    }

    public void setImage(String image) {
        this.image = image;
    }

    public String getDescr() {
        return descr;
    }

    public void setDescr(String descr) {
        this.descr = descr;
    }

    public int getRating() {
        return rating;
    }

    public void setRating(int rating) {
        this.rating = rating;
    }

    public long getVoteCount() {
        return voteCount;
    }

    public void setVoteCount(long voteCount) {
        this.voteCount = voteCount;
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;

        Book book = (Book) o;

        if (idBook != book.idBook) return false;
        if (idAvtorBook != book.idAvtorBook) return false;
        if (pageCount != book.pageCount) return false;
        if (idGenreBook != book.idGenreBook) return false;
        if (publishYear != book.publishYear) return false;
        if (idPublisherBook != book.idPublisherBook) return false;
        if (rating != book.rating) return false;
        if (voteCount != book.voteCount) return false;
        if (name != null ? !name.equals(book.name) : book.name != null) return false;
        if (content != null ? !content.equals(book.content) : book.content != null) return false;
        if (isbn != null ? !isbn.equals(book.isbn) : book.isbn != null) return false;
        if (image != null ? !image.equals(book.image) : book.image != null) return false;
        if (descr != null ? !descr.equals(book.descr) : book.descr != null) return false;

        return true;
    }

    @Override
    public int hashCode() {
        int result = idBook;
        result = 31 * result + (name != null ? name.hashCode() : 0);
        result = 31 * result + idAvtorBook;
        result = 31 * result + (content != null ? content.hashCode() : 0);
        result = 31 * result + pageCount;
        result = 31 * result + (isbn != null ? isbn.hashCode() : 0);
        result = 31 * result + idGenreBook;
        result = 31 * result + publishYear;
        result = 31 * result + idPublisherBook;
        result = 31 * result + (image != null ? image.hashCode() : 0);
        result = 31 * result + (descr != null ? descr.hashCode() : 0);
        result = 31 * result + rating;
        result = 31 * result + (int) (voteCount ^ (voteCount >>> 32));
        return result;
    }
}
