package com.spring.entity;

import javax.persistence.Column;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;
import java.io.Serializable;
import java.util.Date;

@Table(name = "yonghu")
public class Yonghu implements Serializable {
    @GeneratedValue(generator = "JDBC") // 自增的主键映射
    @Id
    @Column(name = "id",insertable=false)
    private Integer id;

    @Column(name = "cx")
    private String cx;
    @Column(name = "username")
    private String username;
    @Column(name = "pwd")
    private String pwd;
    @Column(name = "nicheng")
    private String nicheng;
    @Column(name = "shouji")
    private String shouji;
    @Column(name = "xingbie")
    private String xingbie;
    @Column(name = "youxiang")
    private String youxiang;
    @Column(name = "gongzuoxingzhi")
    private String gongzuoxingzhi;
    @Column(name = "gongzuodidian")
    private String gongzuodidian;
    @Column(name = "gerenjianjie")
    private String gerenjianjie;
    @Column(name = "jifen")
    private Integer jifen;
    @Column(name = "touxiang")
    private String touxiang;

    @Column(name = "addtime")
    private String addtime;

    private static final long serialVersionUID = 1L;

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }



    public String getCx() {
        return cx;
    }
    public void setCx(String cx) {
        this.cx = cx == null ? "" : cx.trim();
    }

    public String getUsername() {
        return username;
    }
    public void setUsername(String username) {
        this.username = username == null ? "" : username.trim();
    }

    public String getPwd() {
        return pwd;
    }
    public void setPwd(String pwd) {
        this.pwd = pwd == null ? "" : pwd.trim();
    }

    public String getNicheng() {
        return nicheng;
    }
    public void setNicheng(String nicheng) {
        this.nicheng = nicheng == null ? "" : nicheng.trim();
    }

    public String getShouji() {
        return shouji;
    }
    public void setShouji(String shouji) {
        this.shouji = shouji == null ? "" : shouji.trim();
    }

    public String getXingbie() {
        return xingbie;
    }
    public void setXingbie(String xingbie) {
        this.xingbie = xingbie == null ? "" : xingbie.trim();
    }

    public String getYouxiang() {
        return youxiang;
    }
    public void setYouxiang(String youxiang) {
        this.youxiang = youxiang == null ? "" : youxiang.trim();
    }

    public String getGongzuoxingzhi() {
        return gongzuoxingzhi;
    }
    public void setGongzuoxingzhi(String gongzuoxingzhi) {
        this.gongzuoxingzhi = gongzuoxingzhi == null ? "" : gongzuoxingzhi.trim();
    }

    public String getGongzuodidian() {
        return gongzuodidian;
    }
    public void setGongzuodidian(String gongzuodidian) {
        this.gongzuodidian = gongzuodidian == null ? "" : gongzuodidian.trim();
    }

    public String getGerenjianjie() {
        return gerenjianjie;
    }
    public void setGerenjianjie(String gerenjianjie) {
        this.gerenjianjie = gerenjianjie == null ? "" : gerenjianjie.trim();
    }

    public Integer getJifen() {
        return jifen;
    }
    public void setJifen(Integer jifen) {
        this.jifen = jifen == null ? 0 : jifen;
    }

    public String getTouxiang() {
        return touxiang;
    }
    public void setTouxiang(String touxiang) {
        this.touxiang = touxiang == null ? "" : touxiang.trim();
    }

    public String getAddtime() {
        return addtime;
    }

    public void setAddtime(String addtime) {
        this.addtime = addtime;
    }
}
