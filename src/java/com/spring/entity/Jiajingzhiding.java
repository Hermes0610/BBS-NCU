package com.spring.entity;

import javax.persistence.Column;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;
import java.io.Serializable;
import java.util.Date;

@Table(name = "jiajingzhiding")
public class Jiajingzhiding implements Serializable {
    @GeneratedValue(generator = "JDBC") // 自增的主键映射
    @Id
    @Column(name = "id",insertable=false)
    private Integer id;

    @Column(name = "bianhao")
    private String bianhao;
    @Column(name = "biaoti")
    private String biaoti;
    @Column(name = "faburen")
    private String faburen;
    @Column(name = "jiajing")
    private String jiajing;
    @Column(name = "zhiding")
    private String zhiding;
    @Column(name = "caozuoren")
    private String caozuoren;
    private Integer tieziid;

    @Column(name = "addtime")
    private String addtime;

    private static final long serialVersionUID = 1L;

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }



    public String getBianhao() {
        return bianhao;
    }
    public void setBianhao(String bianhao) {
        this.bianhao = bianhao == null ? "" : bianhao.trim();
    }

    public String getBiaoti() {
        return biaoti;
    }
    public void setBiaoti(String biaoti) {
        this.biaoti = biaoti == null ? "" : biaoti.trim();
    }

    public String getFaburen() {
        return faburen;
    }
    public void setFaburen(String faburen) {
        this.faburen = faburen == null ? "" : faburen.trim();
    }

    public String getJiajing() {
        return jiajing;
    }
    public void setJiajing(String jiajing) {
        this.jiajing = jiajing == null ? "" : jiajing.trim();
    }

    public String getZhiding() {
        return zhiding;
    }
    public void setZhiding(String zhiding) {
        this.zhiding = zhiding == null ? "" : zhiding.trim();
    }

    public String getCaozuoren() {
        return caozuoren;
    }
    public void setCaozuoren(String caozuoren) {
        this.caozuoren = caozuoren == null ? "" : caozuoren.trim();
    }
    public Integer getTieziid() {
        return tieziid;
    }
    public void setTieziid(Integer tieziid) {
        this.tieziid = tieziid == null ? 0 : tieziid;
    }

    public String getAddtime() {
        return addtime;
    }

    public void setAddtime(String addtime) {
        this.addtime = addtime;
    }
}
