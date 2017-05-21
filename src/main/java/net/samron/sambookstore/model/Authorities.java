package net.samron.sambookstore.model;

import javax.persistence.*;

/**
 * Created by samansadeghyan on 5/5/2017 AD.
 */


@Entity
@Table(name = "authorities")
public class Authorities {

    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    @Column(name = "authority_id")
    private int authoritiesId;

    @Column(name = "authority_phone")
    private String authorityPhone;

    @Column(name = "authority")
    private String authority;


    public String getAuthorityPhone() {
        return authorityPhone;
    }

    public void setAuthorityPhone(String authorityPhone) {
        this.authorityPhone = authorityPhone;
    }

    public String getAuthority() {
        return authority;
    }

    public void setAuthority(String authority) {
        this.authority = authority;
    }

    public int getAuthoritiesId() {
        return authoritiesId;
    }

    public void setAuthoritiesId(int authoritiesId) {
        this.authoritiesId = authoritiesId;
    }
}
