package com.example.refugeapproject.membership;

import javax.persistence.*;

@Entity
@Table(name = "view_count")
public class ViewCount {

    @Id
    @Column(name = "view_id")
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Integer blog_id;

    private Integer views;

    public Integer getBlog_id() {
        return blog_id;
    }

    public void setBlog_id(Integer blog_id) {
        this.blog_id = blog_id;
    }

    public Integer getViews() {
        return views;
    }

    public void setViews(Integer views) {
        this.views = views;
    }
}
