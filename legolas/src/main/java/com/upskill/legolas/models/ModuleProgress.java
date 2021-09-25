package com.upskill.legolas.models;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table (name = "modules_progress")
public class ModuleProgress {  
    
    public ModuleProgress() {}

    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    @Column(name = "row_id")
    private Long row_id;

    @Column(name = "fk_user_id")
    private Long fk_user_id;

    @Column(name = "fk_module_id")
    private Long fk_module_id;

    @Column(name = "module_progress")
    private int module_progress;

    public Long getFk_user_id() {
        return fk_user_id;
    }

    public void setFk_user_id(Long fk_user_id) {
        this.fk_user_id = fk_user_id;
    }

    public Long getFk_module_id() {
        return fk_module_id;
    }

    public void setFk_module_id(Long fk_module_id) {
        this.fk_module_id = fk_module_id;
    }

    public int getModule_progress() {
        return module_progress;
    }

    public void setModule_progress(int module_progress) {
        this.module_progress = module_progress;
    }
    
}
