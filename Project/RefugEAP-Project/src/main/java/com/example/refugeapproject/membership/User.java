package com.example.refugeapproject.membership;


import java.util.HashSet;
import java.util.Set;

import javax.persistence.*;
 
@Entity
@Table(name = "users")
public class User {
 
    @Id
    @Column(name = "id")
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    private String username;
    private String password;
    private boolean enabled;

    @ManyToMany(fetch = FetchType.EAGER)
    @JoinTable(
            name = "users_roles",
            joinColumns = @JoinColumn(name = "user_id"),
            inverseJoinColumns = @JoinColumn(name = "role_id")
    )
    private Set<Role> roles = new HashSet<>();

 
    public Long getId() {
        return id;
    }
    public String getUsername() {
        return username;
    }
    public String getPassword() {
        return password;
    }
    public boolean isEnabled() {
        return enabled;
    }
    public Set<Role> getRoles() {
        return roles;
    }

    public void setUsername(String user_name)
    {
        this.username= user_name;
    }

    public void setPassword(String pass)
    {
        this.password= pass;
    }
    
    public void setEnabled(boolean enb)
    {
        this.enabled= enb;
    }  

    public void setRoles(Set<Role> roles)
    {
        this.roles = roles;
    }

    public String GetRolesNames()
    {
        String roles_name="";
        if(this.roles.size()>0)
        {
            for(Role r : this.roles)
            { 
                roles_name=roles_name.concat(" , ").concat(r.getName());
            }
            String roles_name_= roles_name.substring(3);
            return roles_name_;
        }
        return roles_name;
        
    }
 
}