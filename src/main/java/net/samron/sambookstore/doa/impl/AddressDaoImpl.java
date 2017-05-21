package net.samron.sambookstore.dao.impl;


import net.samron.sambookstore.doa.AddressDao;
import net.samron.sambookstore.model.Address;
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
public class AddressDaoImpl implements AddressDao {


    @Autowired
    private SessionFactory sessionFactory;

    public List<Address> getAllAddressList() {
        Session session = sessionFactory.getCurrentSession();
        Query query = session.createQuery("from Address");
        List<Address> addressList =  query.list();
        session.flush();

        return addressList;

    }

    public Address getAddressById(int id) {
        Session session = sessionFactory.getCurrentSession();
        Address address = (Address) session.get(Address.class, id);
        session.flush();

        return address;
    }

    public List<Address> getAddressListByUserId(int userId) {
        Session session = sessionFactory.getCurrentSession();
        Query query = session.createQuery("from Address where user_id_fk = ?");
        query.setInteger(0, userId);
        List<Address> addressList =  query.list();

        return addressList;
    }

    public void addAddress(Address address) {
        Session session = sessionFactory.getCurrentSession();
        session.saveOrUpdate(address);
        session.flush();
    }

    public void deleteAddress(Address address) {
        Session session = sessionFactory.getCurrentSession();
        session.delete(address);
        session.flush();
    }
}
