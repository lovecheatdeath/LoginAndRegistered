package com.jnshu.pojo;

import org.springframework.stereotype.Component;

@Component
public class Profession {
    private Integer id;

    private Boolean status;

    private String img;

    private Integer type;

    private String name;

    private String introduce;

    private Integer needed;

    private Integer studing;

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public Boolean getStatus() {
        return status;
    }

    public void setStatus(Boolean status) {
        this.status = status;
    }

    public String getImg() {
        return img;
    }

    public void setImg(String img) {
        this.img = img == null ? null : img.trim();
    }

    public Integer getType() {
        return type;
    }

    public void setType(Integer type) {
        this.type = type;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name == null ? null : name.trim();
    }

    public String getIntroduce() {
        return introduce;
    }

    public void setIntroduce(String introduce) {
        this.introduce = introduce == null ? null : introduce.trim();
    }

    public Integer getNeeded() {
        return needed;
    }

    public void setNeeded(Integer needed) {
        this.needed = needed;
    }

    public Integer getStuding() {
        return studing;
    }

    public void setStuding(Integer studing) {
        this.studing = studing;
    }

    @Override
    public String toString() {
        return "Profession{" +
                "id=" + id +
                ", status=" + status +
                ", img='" + img + '\'' +
                ", type=" + type +
                ", name='" + name + '\'' +
                ", introduce='" + introduce + '\'' +
                ", needed=" + needed +
                ", studing=" + studing +
                '}';
    }
}