package net.samron.sambookstore.Service;

import net.samron.sambookstore.model.Book;

import java.util.List;

/**
 * Created by samansadeghyan on 4/7/2017 AD.
 */

public interface BookService {


    Book getBookById(int id);

    List<Book> getBookList ();

    void addBook(Book Book);

    void editBook(Book Book);

    void deleteBook(int id);

}
