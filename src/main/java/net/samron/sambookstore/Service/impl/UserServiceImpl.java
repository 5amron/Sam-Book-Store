package net.samron.sambookstore.Service.impl;


import net.samron.sambookstore.Service.UserService;
import net.samron.sambookstore.doa.UserDao;
import net.samron.sambookstore.model.User;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * Created by samansadeghyan on 4/7/2017 AD.
 */

@Service
public class UserServiceImpl implements UserService {

    @Autowired
    private UserDao userDao;

    public User getUserById(int id) {
        return userDao.getUserById(id);
    }

    public User getUserByPhone(String userPhone) {
        return userDao.getUserByPhone(userPhone);
    }

    public List<User> getUserList() {
        return userDao.getUserList();
    }

    public void addUser(User user) {
        userDao.addUser(user);
    }

    public void editUser(User user) {
        userDao.editUser(user);
    }

    public void deleteUser(User user) {
        userDao.deleteUser(user);
    }
}
