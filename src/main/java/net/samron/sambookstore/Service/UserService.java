package net.samron.sambookstore.Service;



import net.samron.sambookstore.model.User;

import java.util.List;

/**
 * Created by samansadeghyan on 4/7/2017 AD.
 */
public interface UserService {

    User getUserById(int id);

    User getUserByPhone(String userPhone);

    List<User> getUserList();

    void addUser(User user);

    void editUser(User user);

    void deleteUser(User user);


}
