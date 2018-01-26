package ru.javabegin.trainin.springlibrary.dao.impl;

import org.hibernate.Criteria;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.transaction.annotation.Transactional;
import ru.javabegin.trainin.springlibrary.dao.interfaces.BookDAO;
import ru.javabegin.trainin.springlibrary.entities.Avtor;
import ru.javabegin.trainin.springlibrary.entities.Book;
import ru.javabegin.trainin.springlibrary.entities.Genre;

import java.util.List;

@Component
public class BookDAOImpl implements BookDAO {

    @Autowired
    private SessionFactory sessionFactory;

    private List<Book> books;


    @Transactional
    @Override
    public List<Book> getBooks() {

        books = (List<Book>) sessionFactory.getCurrentSession()
                .createCriteria(Book.class)
                .setResultTransformer(Criteria.DISTINCT_ROOT_ENTITY).list();

        return books;
    }

    @Override
    public List<Book> getBooks(Avtor author) {
        return null;
    }

    @Override
    public List<Book> getBooks(String bookName) {
        return null;
    }

    @Override
    public List<Book> getBooks(Genre genre) {
        return null;
    }

    @Override
    public List<Book> getBooks(Character letter) {
        return null;
    }

}
