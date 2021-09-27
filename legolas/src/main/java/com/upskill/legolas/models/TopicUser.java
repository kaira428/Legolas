package com.upskill.legolas.models;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table (name = "topics_users")
public class TopicUser {

    public TopicUser() {}

    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    @Column(name = "row_id")
    private Long row_id;

    @Column(name = "fk_user_id")
    private Long fk_user_id;

    @Column(name = "fk_topic_id")
    private Long fk_topic_id;

    @Column(name = "isCompleted")
    private boolean isCompleted;

    @Column(name = "isCertified")
    private boolean isCertified;

    public Long getFk_user_id() {
        return fk_user_id;
    }

    public void setFk_user_id(Long fk_user_id) {
        this.fk_user_id = fk_user_id;
    }

    public Long getFk_topic_id() {
        return fk_topic_id;
    }

    public void setFk_topic_id(Long fk_topic_id) {
        this.fk_topic_id = fk_topic_id;
    }

    public boolean getIsCompleted() {
        return isCompleted;
    }

    public void setIsCompleted(boolean isCompleted) {
        this.isCompleted = isCompleted;
    }

    public boolean getIsCertified() {
        return isCertified;
    }

    public void setIsCertified(boolean isCertified) {
        this.isCertified = isCertified;
    }
    
}
