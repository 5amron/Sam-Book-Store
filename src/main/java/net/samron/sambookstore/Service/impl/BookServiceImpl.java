package net.samron.sambookstore.Service.impl;

import net.samron.sambookstore.Service.BookService;
import net.samron.sambookstore.doa.BookDoa;
import net.samron.sambookstore.model.Book;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * Created by samansadeghyan on 4/7/2017 AD.
 */

@Service
public class BookServiceImpl implements BookService {

    @Autowired
    private BookDoa bookDoa;

    public Book getBookById(int bookId) {
        return bookDoa.getBookById(bookId);
    }

    public List<Book> getBookList() {
        return bookDoa.getAllBooks();
    }

    public void addBook(Book book) {
        bookDoa.addBook(book);
    }


    public void editBook(Book book) {
        bookDoa.updateBook(book);
    }

    public void deleteBook(int id){
        bookDoa.deleteBook(id);
    }

}
