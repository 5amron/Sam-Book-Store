package net.samron.sambookstore.doa.impl;


import net.samron.sambookstore.doa.UserDao;
import net.samron.sambookstore.model.Authorities;
import net.samron.sambookstore.model.User;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

/**
 * Created by samansadeghyan on 5/2/2017 AD.
 */

@Repository
@Transactional
public class UserDaoImpl implements UserDao {

    @Autowired
    private SessionFactory sessionFactory;

    public User getUserById(int id) {
        Session session = sessionFactory.getCurrentSession();
        User user = (User) session.get(User.class, id);
        session.flush();

        return user;
    }

    public User getUserByPhone(String userPhone) {
        Session session = sessionFactory.getCurrentSession();
        Query query = session.createQuery("from User where user_phone = ?");
        query.setString(0, userPhone);



        /////////////////////add try catch to thses


        if (query.uniqueResult() == null){
            return null;
        }else{
            return (User) query.uniqueResult();
        }

    }

    public List<User> getUserList() {
        Session session = sessionFactory.getCurrentSession();
        Query query = session.createQuery("from User");
        List<User> userList =  query.list();
        session.flush();

        return userList;
    }

    public void addUser(User user) {
        Session session = sessionFactory.getCurrentSession();
        Authorities authority = new Authorities();
        authority.setAuthority("ROLE_USER");
        authority.setAuthorityPhone(user.getUserPhone());

        session.saveOrUpdate(authority);
        session.saveOrUpdate(user);
        session.flush();
    }

    public void editUser(User user) {
        Session session = sessionFactory.getCurrentSession();
        session.saveOrUpdate(user);
        session.flush();
    }

    public void deleteUser(User user) {
        Session session = sessionFactory.getCurrentSession();
        session.delete(user);
        session.flush();
    }
}
