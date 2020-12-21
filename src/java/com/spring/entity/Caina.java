package com.spring.entity;

import javax.persistence.Column;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;
import java.io.Serializable;
import java.util.Date;

@Table(name = "caina")
public class Caina implements Serializable {
    @GeneratedValue(generator = "JDBC") // 自增的主键映射
    @Id
    @Column(name = "id",insertable=false)
    private Integer id;

    @Column(name = "xuqiubianhao")
    private String xuqiubianhao;
    @Column(name = "biaoti")
    private String biaoti;
    @Column(name = "faburen")
    private String faburen;
    @Column(name = "jianglijifen")
    private Integer jianglijifen;
    @Column(name = "huidaren")
    private String huidaren;
    private Integer huidaid;

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

    public String getFaburen() {
        return faburen;
    }
    public void setFaburen(String faburen) {
        this.faburen = faburen == null ? "" : faburen.trim();
    }

    public Integer getJianglijifen() {
        return jianglijifen;
    }
    public void setJianglijifen(Integer jianglijifen) {
        this.jianglijifen = jianglijifen == null ? 0 : jianglijifen;
    }

    public String getHuidaren() {
        return huidaren;
    }
    public void setHuidaren(String huidaren) {
        this.huidaren = huidaren == null ? "" : huidaren.trim();
    }
    public Integer getHuidaid() {
        return huidaid;
    }
    public void setHuidaid(Integer huidaid) {
        this.huidaid = huidaid == null ? 0 : huidaid;
    }

    public String getAddtime() {
        return addtime;
    }

    public void setAddtime(String addtime) {
        this.addtime = addtime;
    }
}
