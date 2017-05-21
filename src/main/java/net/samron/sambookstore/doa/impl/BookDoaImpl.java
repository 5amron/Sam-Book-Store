package net.samron.sambookstore.doa.impl;

import net.samron.sambookstore.doa.BookDoa;
import net.samron.sambookstore.model.Book;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

/**
 * Created by samansadeghyan on 4/1/2017 AD.
 */


@Repository
@Transactional
public class BookDoaImpl implements BookDoa {

    @Autowired
    private SessionFactory sessionFactory;


    public void addBook(Book book) {
        Session session = sessionFactory.getCurrentSession();
        session.saveOrUpdate(book);
        // this will execute all operation in sessions :
        session.flush();
    }

    public Book getBookById(int id) {
        Session session = sessionFactory.getCurrentSession();
        // because it gets back a object type we need to cast it to book (cause it's book object actually but is defined as unknown object)
        Book book = (Book) session.get(Book.class, id);
        session.flush();

        return book;
    }

    public List<Book> getAllBooks() {
        Session session = sessionFactory.getCurrentSession();
        Query query = session.createQuery("from Book");
        List<Book> books = query.list();
        session.flush();

        return books;
    }

    public void deleteBook(int id) {
        Session session = sessionFactory.getCurrentSession();
        session.delete(getBookById(id));
        session.flush();
    }



    public void updateBook(Book book) {
        // it's the same as addBook and system understand changes itself
        Session session = sessionFactory.getCurrentSession();
        session.saveOrUpdate(book);
        // this will execute all operation in sessions :
        session.flush();
    }







}
