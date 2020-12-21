package com.spring.controller;

import com.spring.dao.YonghuMapper;
import com.spring.entity.Yonghu;
import com.spring.service.YonghuService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import tk.mybatis.mapper.entity.Example;
import util.Request;
import util.Info;
import dao.Query;

import java.util.*;


/**
 * 用户
 */
@Controller
public class YonghuController extends BaseController {
    @Autowired
    private YonghuMapper dao;
    @Autowired
    private YonghuService service;


    /**
     * 后台列表页
     */
    @RequestMapping("/yonghu_list")
    public String list() {
        // 检测是否有登录，没登录则跳转到登录页面
        if (!checkLogin()) {
            return showError("尚未登录", "./login.do");
        }

        String order = Request.get("order", "id"); // 获取前台提交的URL参数 order  如果没有则设置为id
        String sort = Request.get("sort", "desc"); // 获取前台提交的URL参数 sort  如果没有则设置为desc

        Example example = new Example(Yonghu.class); //  创建一个扩展搜索类
        Example.Criteria criteria = example.createCriteria();          // 创建一个扩展搜索条件类
        String where = " 1=1 ";   // 创建初始条件为：1=1
        where += getWhere();      // 从方法中获取url 上的参数，并写成 sql条件语句

        if ("用户".equals(session.getAttribute("cx"))) {
            where += " AND username='" + session.getAttribute("username") + "' ";
        }

        criteria.andCondition(where);   // 将条件写进上面的扩展条件类中
        if (sort.equals("desc")) {        // 判断前台提交的sort 参数是否等于  desc倒序  是则使用倒序，否则使用正序
            example.orderBy(order).desc();  // 把sql 语句设置成倒序
        } else {
            example.orderBy(order).asc();   // 把 sql 设置成正序
        }
        int page = request.getParameter("page") == null ? 1 : Integer.valueOf(request.getParameter("page"));  // 获取前台提交的URL参数 page  如果没有则设置为1
        page = Math.max(1, page);  // 取两个数的最大值，防止page 小于1
        List<Yonghu> list = service.selectPageExample(example, page, 12);   // 获取当前页的行数
        // 将列表写给界面使用
        request.setAttribute("list", list);
        assign("orderby", order);  // 把当前排序结果写进前台
        assign("sort", sort);      // 把当前排序结果写进前台
        assign("where", where);    // 把当前条件写给前台
        return "yonghu_list";   // 使用视图文件：WebRoot\yonghu_list.jsp
    }

    public String getWhere() {
        String where = " ";
        // 以下也是一样的操作，判断是否符合条件，符合则写入sql 语句
        if (!Request.get("cx").equals("")) {
            where += " AND cx ='" + Request.get("cx") + "' ";
        }
        if (!Request.get("username").equals("")) {
            where += " AND username LIKE '%" + Request.get("username") + "%' ";
        }
        return where;
    }


    @RequestMapping("/yonghu_add")
    public String add() {
        return "yonghu_add";
    }

    @RequestMapping("/yonghuadd")
    public String addWeb() {
        return "yonghuadd";
    }


    @RequestMapping("/yonghu_updt")
    public String updt() {
        int id = Request.getInt("id");
        // 获取行数据，并赋值给前台jsp页面
        Yonghu mmm = service.find(id);
        request.setAttribute("mmm", mmm);
        request.setAttribute("updtself", 0);
        return "yonghu_updt";
    }

    @RequestMapping("/yonghu_updtself")
    public String updtself() {
        // 更新个人资料
        int id = (int) request.getSession().getAttribute("id");
        Yonghu mmm = service.find(id);
        request.setAttribute("mmm", mmm);
        request.setAttribute("updtself", 1);

        return "yonghu_updtself";
    }

    /**
     * 添加内容
     *
     * @return
     */
    @RequestMapping("/yonghuinsert")
    public String insert() {
        String tmp = "";
        Yonghu post = new Yonghu();  // 创建实体类
        // 设置前台提交上来的数据到实体类中
        post.setCx(Request.get("cx"));

        post.setUsername(Request.get("username"));

        post.setPwd(Request.get("pwd"));

        post.setNicheng(Request.get("nicheng"));

        post.setShouji(Request.get("shouji"));

        post.setXingbie(Request.get("xingbie"));

        post.setYouxiang(Request.get("youxiang"));

        post.setGongzuoxingzhi(Request.get("gongzuoxingzhi"));

        post.setGongzuodidian(Request.get("gongzuodidian"));

        post.setGerenjianjie(util.DownloadRemoteImage.run(Request.get("gerenjianjie")));

        post.setJifen(Request.getInt("jifen"));

        post.setTouxiang(Request.get("touxiang"));


        post.setAddtime(Info.getDateStr()); // 设置添加时间
        service.insert(post); // 插入数据
        int charuid = post.getId().intValue();

        return showSuccess("保存成功", Request.get("referer").equals("") ? request.getHeader("referer") : Request.get("referer"));
    }

    /**
     * 更新内容
     *
     * @return
     */
    @RequestMapping("/yonghuupdate")
    public String update() {
        // 创建实体类
        Yonghu post = new Yonghu();
        // 将前台表单数据填充到实体类
        if (!Request.get("cx").equals(""))
            post.setCx(Request.get("cx"));
        if (!Request.get("username").equals(""))
            post.setUsername(Request.get("username"));
        if (!Request.get("pwd").equals(""))
            post.setPwd(Request.get("pwd"));
        if (!Request.get("nicheng").equals(""))
            post.setNicheng(Request.get("nicheng"));
        if (!Request.get("shouji").equals(""))
            post.setShouji(Request.get("shouji"));
        if (!Request.get("xingbie").equals(""))
            post.setXingbie(Request.get("xingbie"));
        if (!Request.get("youxiang").equals(""))
            post.setYouxiang(Request.get("youxiang"));
        if (!Request.get("gongzuoxingzhi").equals(""))
            post.setGongzuoxingzhi(Request.get("gongzuoxingzhi"));
        if (!Request.get("gongzuodidian").equals(""))
            post.setGongzuodidian(Request.get("gongzuodidian"));
        if (!Request.get("gerenjianjie").equals(""))
            post.setGerenjianjie(util.DownloadRemoteImage.run(Request.get("gerenjianjie")));
        if (!Request.get("jifen").equals(""))
            post.setJifen(Request.getInt("jifen"));
        if (!Request.get("touxiang").equals(""))
            post.setTouxiang(Request.get("touxiang"));

        post.setId(Request.getInt("id"));
        service.update(post); // 更新数据
        int charuid = post.getId().intValue();
        if (Request.getInt("updtself") == 1) {
            return showSuccess("保存成功", "yonghu_updtself.do");
        }
        return showSuccess("保存成功", Request.get("referer")); // 弹出保存成功，并跳转到前台提交的 referer 页面
    }

    /**
     * 删除
     */
    @RequestMapping("/yonghu_delete")
    public String delete() {
        if (!checkLogin()) {
            return showError("尚未登录");
        }
        int id = Request.getInt("id");  // 根据id 删除某行数据
        HashMap delMap = Query.make("yonghu").find(id);

        service.delete(id);// 根据id 删除某行数据
        return showSuccess("删除成功", request.getHeader("referer"));//弹出删除成功，并跳回上一页
    }
}
