package net.samron.sambookstore.Service;


import net.samron.sambookstore.model.Address;

import java.util.List;

/**
 * Created by samansadeghyan on 5/2/2017 AD.
 */


public interface AddressService {

    List<Address> getAllAddressList();

    Address getAddressById(int id);

    List<Address> getAddressListByUserId(int userId);

    void addAddress(Address address);

    void deleteAddress(Address address);

}
