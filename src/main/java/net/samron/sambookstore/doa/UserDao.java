package net.samron.sambookstore.doa;



import net.samron.sambookstore.model.User;

import java.util.List;

/**
 * Created by samansadeghyan on 5/2/2017 AD.
 */


public interface UserDao {


    User getUserById(int id);

    User getUserByPhone(String userPhone);

    List<User> getUserList();

    void addUser(User user);

    void editUser(User user);

    void deleteUser(User user);



}
