package com.spring.entity;

import javax.persistence.Column;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;
import java.io.Serializable;
import java.util.Date;

@Table(name = "huida")
public class Huida implements Serializable {
    @GeneratedValue(generator = "JDBC") // 自增的主键映射
    @Id
    @Column(name = "id",insertable=false)
    private Integer id;

    @Column(name = "xuqiubianhao")
    private String xuqiubianhao;
    @Column(name = "biaoti")
    private String biaoti;
    @Column(name = "jianglijifen")
    private Integer jianglijifen;
    @Column(name = "faburen")
    private String faburen;
    @Column(name = "huidaneirong")
    private String huidaneirong;
    @Column(name = "zhuangtai")
    private String zhuangtai;
    @Column(name = "huidaren")
    private String huidaren;
    private Integer xuqiuid;

    @Column(name = "addtime")
    private String addtime;

    private static final long serialVersionUID = 1L;

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }



    public String getXuqiubianhao() {
        return xuqiubianhao;
    }
    public void setXuqiubianhao(String xuqiubianhao) {
        this.xuqiubianhao = xuqiubianhao == null ? "" : xuqiubianhao.trim();
    }

    public String getBiaoti() {
        return biaoti;
    }
    public void setBiaoti(String biaoti) {
        this.biaoti = biaoti == null ? "" : biaoti.trim();
    }

    public Integer getJianglijifen() {
        return jianglijifen;
    }
    public void setJianglijifen(Integer jianglijifen) {
        this.jianglijifen = jianglijifen == null ? 0 : jianglijifen;
    }

    public String getFaburen() {
        return faburen;
    }
    public void setFaburen(String faburen) {
        this.faburen = faburen == null ? "" : faburen.trim();
    }

    public String getHuidaneirong() {
        return huidaneirong;
    }
    public void setHuidaneirong(String huidaneirong) {
        this.huidaneirong = huidaneirong == null ? "" : huidaneirong.trim();
    }

    public String getZhuangtai() {
        return zhuangtai;
    }
    public void setZhuangtai(String zhuangtai) {
        this.zhuangtai = zhuangtai == null ? "" : zhuangtai.trim();
    }

    public String getHuidaren() {
        return huidaren;
    }
    public void setHuidaren(String huidaren) {
        this.huidaren = huidaren == null ? "" : huidaren.trim();
    }
    public Integer getXuqiuid() {
        return xuqiuid;
    }
    public void setXuqiuid(Integer xuqiuid) {
        this.xuqiuid = xuqiuid == null ? 0 : xuqiuid;
    }

    public String getAddtime() {
        return addtime;
    }

    public void setAddtime(String addtime) {
        this.addtime = addtime;
    }
}
