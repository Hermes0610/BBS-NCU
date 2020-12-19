package com.spring.entity;

import javax.persistence.Column;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;
import java.io.Serializable;
import java.util.Date;

@Table(name = "lanmu")
public class Lanmu implements Serializable {
    @GeneratedValue(generator = "JDBC") // 自增的主键映射
    @Id
    @Column(name = "id",insertable=false)
    private Integer id;

    @Column(name = "lanmuming")
    private String lanmuming;
    @Column(name = "guanliren")
    private String guanliren;

    @Column(name = "addtime")
    private String addtime;

    private static final long serialVersionUID = 1L;

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }



    public String getLanmuming() {
        return lanmuming;
    }
    public void setLanmuming(String lanmuming) {
        this.lanmuming = lanmuming == null ? "" : lanmuming.trim();
    }

    public String getGuanliren() {
        return guanliren;
    }
    public void setGuanliren(String guanliren) {
        this.guanliren = guanliren == null ? "" : guanliren.trim();
    }

    public String getAddtime() {
        return addtime;
    }

    public void setAddtime(String addtime) {
        this.addtime = addtime;
    }
}
