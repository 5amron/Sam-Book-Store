package net.samron.sambookstore.Service.impl;


import net.samron.sambookstore.Service.AddressService;
import net.samron.sambookstore.doa.AddressDao;
import net.samron.sambookstore.model.Address;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * Created by samansadeghyan on 5/2/2017 AD.
 */

@Service
public class AddressServiceImpl implements AddressService {

    @Autowired
    private AddressDao addressDao;

    public List<Address> getAllAddressList() {
        return addressDao.getAllAddressList();
    }

    public Address getAddressById(int id) {
        return addressDao.getAddressById(id);
    }

    public List<Address> getAddressListByUserId(int userId) {
        return addressDao.getAddressListByUserId(userId);
    }

    public void addAddress(Address address) {
        addressDao.addAddress(address);
    }


    public void deleteAddress(Address address) {
        addressDao.deleteAddress(address);
    }
}
