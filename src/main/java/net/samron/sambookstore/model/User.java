package net.samron.sambookstore.model;

import org.hibernate.annotations.*;

import javax.persistence.*;
import javax.persistence.CascadeType;
import javax.persistence.Entity;
import javax.persistence.Table;
import javax.validation.constraints.Min;
import java.util.ArrayList;
import java.util.List;

/**
 * Created by samansadeghyan on 4/7/2017 AD.
 */

@Entity
@Table(name = "users")
public class User {


    @Id @GeneratedValue(strategy = GenerationType.AUTO)
    @Column(name = "user_id")
    private int userId;

    @Column(name = "user_full_name")
    private String userFullName;

    @Column(name = "user_password")
    private String userPassword;

//    @Transient
//    @Column(name = "user_match_password")
//    private String userMatchPassword;

    @Column(name = "user_email")
    private String userEmail;

    @Column(name = "user_phone")
    private String userPhone;

    @Column(name = "user_date")
    private String userDate;

    @Column(name = "user_total_purchased")
    @Min(value = 0, message = "The user total must not be less than zero.")
    private String userTotalPurchased;


    @Column(name = "user_enabled")
    private boolean userEnabled;


//    @OneToMany(mappedBy = "user" , orphanRemoval= true, fetch = FetchType.EAGER)
//    @Cascade(org.hibernate.annotations.CascadeType.ALL)
//    private List<Address> userAddressesArray = new ArrayList<Address>();

    private String userAddress;


    public int getUserId() {
        return userId;
    }

    public void setUserId(int userId) {
        this.userId = userId;
    }




    public String getUserEmail() {
        return userEmail;
    }

    public void setUserEmail(String userEmail) {
        this.userEmail = userEmail;
    }

    public String getUserPhone() {
        return userPhone;
    }

    public void setUserPhone(String userPhone) {
        this.userPhone = userPhone;
    }

    public String getUserDate() {
        return userDate;
    }

    public void setUserDate(String userDate) {
        this.userDate = userDate;
    }

    public String getUserTotalPurchased() {
        return userTotalPurchased;
    }

    public void setUserTotalPurchased(String userTotalPurchased) {
        this.userTotalPurchased = userTotalPurchased;
    }

//    public List<Address> getUserAddressesArray() {
//        return userAddressesArray;
//    }
//
//    public void setUserAddressesArray(List<Address> userAddressesArray) {
//        this.userAddressesArray = userAddressesArray;
//    }


    public String getUserAddress() {
        return userAddress;
    }

    public void setUserAddress(String userAddress) {
        this.userAddress = userAddress;
    }

    public String getUserFullName() {
        return userFullName;
    }

    public void setUserFullName(String userFullName) {
        this.userFullName = userFullName;
    }

    public String getUserPassword() {
        return userPassword;
    }

    public void setUserPassword(String userPassword) {
        this.userPassword = userPassword;
    }


    public boolean isUserEnabled() {
        return userEnabled;
    }

    public void setUserEnabled(boolean userEnabled) {
        this.userEnabled = userEnabled;
    }
}
