package com.upskill.legolas.models;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;
import javax.validation.constraints.Size;

@Entity
@Table (name = "users_roles")
public class Role {
    
    public Role(Long fk_user_id, @Size(max = 20) String role) {
        this.fk_user_id = fk_user_id;
        this.role = role;
    }

    public Role() {
    }

    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    private Long rowId;

    @Column (name = "fk_user_id")
    private Long fk_user_id;

    @Column (name = "role")
    @Size(max=20)
    private String role;

    public Long getFk_user_id() {
        return fk_user_id;
    }

    public void setFk_user_id(Long fk_user_id) {
        this.fk_user_id = fk_user_id;
    }

    public String getRole() {
        return role;
    }

    public void setRole(String role) {
        this.role = role;
    }
    
}
