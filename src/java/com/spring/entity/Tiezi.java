package com.spring.entity;

import javax.persistence.Column;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;
import java.io.Serializable;
import java.util.Date;

@Table(name = "tiezi")
public class Tiezi implements Serializable {
    @GeneratedValue(generator = "JDBC") // 自增的主键映射
    @Id
    @Column(name = "id",insertable=false)
    private Integer id;

    @Column(name = "bianhao")
    private String bianhao;
    @Column(name = "biaoti")
    private String biaoti;
    @Column(name = "lanmu")
    private String lanmu;
    @Column(name = "tupian")
    private String tupian;
    @Column(name = "neirong")
    private String neirong;
    @Column(name = "faburen")
    private String faburen;
    @Column(name = "dianjilv")
    private Integer dianjilv;
    @Column(name = "huifushu")
    private Integer huifushu;
    @Column(name = "jiajing")
    private String jiajing;
    @Column(name = "zhiding")
    private String zhiding;

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

    public String getLanmu() {
        return lanmu;
    }
    public void setLanmu(String lanmu) {
        this.lanmu = lanmu == null ? "" : lanmu.trim();
    }

    public String getTupian() {
        return tupian;
    }
    public void setTupian(String tupian) {
        this.tupian = tupian == null ? "" : tupian.trim();
    }

    public String getNeirong() {
        return neirong;
    }
    public void setNeirong(String neirong) {
        this.neirong = neirong == null ? "" : neirong.trim();
    }

    public String getFaburen() {
        return faburen;
    }
    public void setFaburen(String faburen) {
        this.faburen = faburen == null ? "" : faburen.trim();
    }

    public Integer getDianjilv() {
        return dianjilv;
    }
    public void setDianjilv(Integer dianjilv) {
        this.dianjilv = dianjilv == null ? 0 : dianjilv;
    }

    public Integer getHuifushu() {
        return huifushu;
    }
    public void setHuifushu(Integer huifushu) {
        this.huifushu = huifushu == null ? 0 : huifushu;
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

    public String getAddtime() {
        return addtime;
    }

    public void setAddtime(String addtime) {
        this.addtime = addtime;
    }
}
