package net.samron.sambookstore.doa;

import net.samron.sambookstore.model.*;
import java.util.List;

/**
 * Created by samansadeghyan on 5/2/2017 AD.
 */
public interface AddressDao {

    List<Address> getAllAddressList();

    Address getAddressById(int id);

    List<Address> getAddressListByUserId(int userId);

    void addAddress(Address address);

    void deleteAddress(Address address);
    
}
