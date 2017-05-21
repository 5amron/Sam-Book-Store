package net.samron.sambookstore.doa;

import net.samron.sambookstore.model.Book;

import java.util.List;

/**
 * Created by samansadeghyan on 4/1/2017 AD.
 */

public interface BookDoa {

    void addBook(Book book);

    Book getBookById(int id);

    List<Book> getAllBooks();

    void deleteBook(int id);

    void updateBook(Book book);

}
