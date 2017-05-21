package net.samron.sambookstore.controller;

import net.samron.sambookstore.Service.AddressService;
import net.samron.sambookstore.Service.BookService;
import net.samron.sambookstore.Service.UserService;
import net.samron.sambookstore.doa.BookDoa;
import net.samron.sambookstore.model.Address;
import net.samron.sambookstore.model.Book;
import net.samron.sambookstore.model.User;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.multipart.MultipartFile;

import javax.servlet.http.HttpServletRequest;
import javax.validation.Valid;
import java.io.File;
import java.io.IOException;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.util.ArrayList;
import java.util.List;

/**
 * Created by samansadeghyan on 3/30/2017 AD.
 */

@Controller
public class HomeController {

    @Autowired
    private BookService bookService;

    @Autowired
    private UserService userService;
    @Autowired
    private AddressService addressService;

    private Path path;

    @RequestMapping("/")
    public String home(){

        return "index";
    }



    @RequestMapping("/bookList")
    public String getBookList(Model model){
        List<Book> bookList = bookService.getBookList();

        model.addAttribute("books",bookList);

        return "bookList";
    }


    @RequestMapping("/bookList/bookDetails/{bookId}")
    public String getBookDetails(@PathVariable int bookId, Model model) throws IOException {

        Book book = bookService.getBookById(bookId);
        model.addAttribute("book",book);

        return "bookDetails";
    }


    // added by myself!!!!!
    @RequestMapping("/admin/bookList/bookDetails/{bookId}")
    public String getBookDetailsAdmin(@PathVariable int bookId, Model model) throws IOException {

        Book book = bookService.getBookById(bookId);
        model.addAttribute("book",book);

        return "bookDetails";
    }



    @RequestMapping("/admin")
    public String adminPage() {
        return "admin";
    }


    @RequestMapping("/admin/bookInventory")
    public String bookInventory(Model model){
        List<Book> bookList = bookService.getBookList();

        model.addAttribute("books",bookList);

        return "bookInventory";
    }



    @RequestMapping("/admin/bookInventory/addBook")
    public String addBook(Model model){
        Book book = new Book();
        model.addAttribute("book",book);

        return "addBook";
    }




    @RequestMapping(value = "/admin/bookInventory/addBook", method = RequestMethod.POST)
    public String addBookPost(@Valid @ModelAttribute("book") Book book, HttpServletRequest req, BindingResult bindingResult) {

        // checking fields values :
        if(bindingResult.hasErrors()){
            return "addBook";
        }

        bookService.addBook(book);

        // here we need to store image that is uploaded by user as well.
        MultipartFile bookImage = book.getBookImage();
        String rootDir = req.getSession().getServletContext().getRealPath("/");
        path = Paths.get(rootDir + "/WEB-INF/resources/images/" + book.getBookId() + ".png");

        if (bookImage != null && !bookImage.isEmpty()){
            System.out.println("ssssss ::::::: it's not null");
            try {

                bookImage.transferTo(new File(path.toString()));

            }catch (Exception e){
                e.printStackTrace();
                throw new RuntimeException("book image saving failed");
            }
        }else {
            System.out.println("ssssss ::::::: it was null!!!");
        }

        return "redirect:/admin/bookInventory";
        // or
        // return "bookInventory";
    }



    @RequestMapping("/admin/bookInventory/deleteBook/{id}")
    public String deleteBook(@PathVariable int id, Model model, HttpServletRequest req){
        bookService.deleteBook(id);

        String rootDir = req.getSession().getServletContext().getRealPath("/");
        path = Paths.get(rootDir + "/WEB-INF/resources/images/" + id + ".png");

        if (Files.exists(path)){
            try{
                Files.delete(path);
            }catch (IOException e){
                e.printStackTrace();
            }
        }

        return "redirect:/admin/bookInventory";
    }



    @RequestMapping("/admin/bookInventory/updateBook/{id}")
    public String updateBook(@Valid @PathVariable("id") int id, Model model){


        Book book = bookService.getBookById(id);
        model.addAttribute(book);

        return "updateBook";
    }



    @RequestMapping(value = "/admin/bookInventory/updateBook", method = RequestMethod.POST)
    public String updateBookPost(@ModelAttribute("book") Book book, Model model, HttpServletRequest req){
        MultipartFile bookImage = book.getBookImage();
        String rootDir = req.getSession().getServletContext().getRealPath("/");
        path = Paths.get(rootDir + "/WEB-INF/resources/images/" + book.getBookId() + ".png");

        if (bookImage != null && !bookImage.isEmpty()){
            try{
                bookImage.transferTo(new File(path.toString()));
            }catch (Exception e){
                throw new RuntimeException("book image saving failed");
            }
        }

        bookService.editBook(book);

        return "redirect:/admin/bookInventory";
    }








    

    @RequestMapping("/register")
    public String registerUser(Model model) {

        User user = new User();
        model.addAttribute("user", user);

        return "registerUser";
    }

    @RequestMapping(value = "/register", method = RequestMethod.POST)
    public String registerUserPost(@Valid @ModelAttribute("user") User user, BindingResult result, Model model) {

        if (result.hasErrors()) {
            return "registerUser";
        }

        List<User> userList = userService.getUserList();

        for (int i=0; i<userList.size(); i++) {
            if(user.getUserPhone().equals(userList.get(i).getUserPhone())) {
                model.addAttribute("phoneMsg", "Phone already exists.");

                return "registerUser";
            }

            if(user.getUserFullName().equals(userList.get(i).getUserFullName())) {

                model.addAttribute("userFullNameMsg", "Full name already exists.");

                return "registerUser";
            }
        }


        BCryptPasswordEncoder passwordEncoder = new BCryptPasswordEncoder();
        String hashedPassword = passwordEncoder.encode(user.getUserPassword());

        user.setUserPassword(hashedPassword);


        Address address = new Address();
        address.setAddressString(user.getUserAddress());
        address.setAddressUser(user.getUserPhone());
        addressService.addAddress(address);

        user.setUserEnabled(true);
        userService.addUser(user);

        return "registerUserSuccess";
    }







    @RequestMapping("/login")
    public String login(@RequestParam(value="error", required = false) String error,
                        @RequestParam (value="logout", required = false) String logout, Model model
    ) {

        if(error != null) {
            model.addAttribute("error", "Invalid phone and password!");
        }

        if(logout!= null) {
            model.addAttribute("msg", "You have been logged out successfully.");
        }

        return "login";
    }





















}
