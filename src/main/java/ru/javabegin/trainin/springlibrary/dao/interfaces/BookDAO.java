package ru.javabegin.trainin.springlibrary.dao.interfaces;


import ru.javabegin.trainin.springlibrary.entities.Avtor;
import ru.javabegin.trainin.springlibrary.entities.Book;
import ru.javabegin.trainin.springlibrary.entities.Genre;

import java.util.List;


public interface BookDAO {

    List<Book> getBooks();
    List<Book> getBooks(Avtor author);
    List<Book> getBooks(String bookName);
    List<Book> getBooks(Genre genre);
    List<Book> getBooks(Character letter);

}
