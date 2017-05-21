package net.samron.sambookstore.model;

import org.hibernate.validator.constraints.NotEmpty;
import org.springframework.web.multipart.MultipartFile;

import javax.persistence.*;
import javax.validation.constraints.Min;

/**
 * Created by samansadeghyan on 3/31/2017 AD.
 */

@Entity
@Table(name = "books")
public class Book {



    @Id @GeneratedValue(strategy = GenerationType.AUTO)
    @Column(name = "book_id")
//    @NotEmpty(message = "The book name must not be null!")
    private int bookId;
    @Column(name = "book_name")
    private String bookName;
    @Column(name = "book_cat")
    private String bookCat;
    @Column(name = "book_pubdate")
    private String  bookPubDate;
    @Column(name = "book_pagenum")
    private int bookPageNum;
    @Column(name = "book_price")
    @Min(value = 0, message = "The book price must not be less than 0!")
    private double bookPrice;
    @Column(name = "book_author")
    private String bookAuthor;
    @Column(name = "book_description")
    private String bookDescription;

    @Transient
    private MultipartFile bookImage;



    public int getBookId() {
        return bookId;
    }

    public void setBookId(int bookId) {
        this.bookId = bookId;
    }

    public String getBookDescription() {
        return bookDescription;
    }

    public void setBookDescription(String bookDescription) {
        this.bookDescription = bookDescription;
    }

    public String getBookName() {
        return bookName;
    }

    public void setBookName(String bookName) {
        this.bookName = bookName;
    }

    public String getBookCat() {
        return bookCat;
    }

    public void setBookCat(String bookCat) {
        this.bookCat = bookCat;
    }

    public String getBookPubDate() {
        return bookPubDate;
    }

    public void setBookPubDate(String bookPubDate) {
        this.bookPubDate = bookPubDate;
    }

    public int getBookPageNum() {
        return bookPageNum;
    }

    public void setBookPageNum(int bookPageNum) {
        this.bookPageNum = bookPageNum;
    }

    public double getBookPrice() {
        return bookPrice;
    }

    public void setBookPrice(double bookPrice) {
        this.bookPrice = bookPrice;
    }

    public String getBookAuthor() {
        return bookAuthor;
    }

    public void setBookAuthor(String bookAuthor) {
        this.bookAuthor = bookAuthor;
    }


    public MultipartFile getBookImage() {
        return bookImage;
    }

    public void setBookImage(MultipartFile bookImage) {
        this.bookImage = bookImage;
    }
}
