package com.spring.controller;

import com.spring.dao.XuqiuMapper;
import com.spring.entity.Xuqiu;
import com.spring.service.XuqiuService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import tk.mybatis.mapper.entity.Example;
import util.Request;
import util.Info;
import dao.Query;

import java.util.*;


/**
 * 需求
 */
@Controller
public class XuqiuController extends BaseController {
    @Autowired
    private XuqiuMapper dao;
    @Autowired
    private XuqiuService service;


    /**
     * 后台列表页
     */
    @RequestMapping("/xuqiu_list")
    public String list() {
        // 检测是否有登录，没登录则跳转到登录页面
        if (!checkLogin()) {
            return showError("尚未登录", "./login.do");
        }

        String order = Request.get("order", "id"); // 获取前台提交的URL参数 order  如果没有则设置为id
        String sort = Request.get("sort", "desc"); // 获取前台提交的URL参数 sort  如果没有则设置为desc

        Example example = new Example(Xuqiu.class); //  创建一个扩展搜索类
        Example.Criteria criteria = example.createCriteria();          // 创建一个扩展搜索条件类
        String where = " 1=1 ";   // 创建初始条件为：1=1
        where += getWhere();      // 从方法中获取url 上的参数，并写成 sql条件语句
        criteria.andCondition(where);   // 将条件写进上面的扩展条件类中
        if (sort.equals("desc")) {        // 判断前台提交的sort 参数是否等于  desc倒序  是则使用倒序，否则使用正序
            example.orderBy(order).desc();  // 把sql 语句设置成倒序
        } else {
            example.orderBy(order).asc();   // 把 sql 设置成正序
        }
        int page = request.getParameter("page") == null ? 1 : Integer.valueOf(request.getParameter("page"));  // 获取前台提交的URL参数 page  如果没有则设置为1
        page = Math.max(1, page);  // 取两个数的最大值，防止page 小于1
        List<Xuqiu> list = service.selectPageExample(example, page, 12);   // 获取当前页的行数
        // 将列表写给界面使用
        request.setAttribute("list", list);
        assign("orderby", order);  // 把当前排序结果写进前台
        assign("sort", sort);      // 把当前排序结果写进前台
        assign("where", where);    // 把当前条件写给前台
        return "xuqiu_list";   // 使用视图文件：WebRoot\xuqiu_list.jsp
    }

    public String getWhere() {
        String where = " ";
        // 以下也是一样的操作，判断是否符合条件，符合则写入sql 语句
        if (!Request.get("biaoti").equals("")) {
            where += " AND biaoti LIKE '%" + Request.get("biaoti") + "%' ";
        }
        return where;
    }

    /**
     * 发布人列表
     */
    @RequestMapping("/xuqiu_list_faburen")
    public String listfaburen() {
        // 检测是否有登录，没登录则跳转到登录页面
        if (!checkLogin()) {
            return showError("尚未登录", "./login.do");
        }
        String order = Request.get("order", "id"); // 获取前台提交的URL参数 order  如果没有则设置为id
        String sort = Request.get("sort", "desc"); // 获取前台提交的URL参数 sort  如果没有则设置为desc

        Example example = new Example(Xuqiu.class);  //  创建一个扩展搜索类
        Example.Criteria criteria = example.createCriteria();           // 创建一个扩展搜索条件类
        // 初始化一个条件，条件为：发布人=当前登录用户
        String where = " faburen='" + request.getSession().getAttribute("username") + "' ";
        where += getWhere();

        criteria.andCondition(where);   // 将条件写入
        if (sort.equals("desc")) {        // 注释同list
            example.orderBy(order).desc(); // 注释同list
        } else {
            example.orderBy(order).asc(); // 注释同list
        }

        int page = request.getParameter("page") == null ? 1 : Integer.valueOf(request.getParameter("page")); // 注释同list
        page = Math.max(1, page); // 注释同list

        List<Xuqiu> list = service.selectPageExample(example, page, 12);

        request.setAttribute("list", list);
        assign("orderby", order);
        assign("sort", sort);
        assign("where", where);
        return "xuqiu_list_faburen";
    }


    /**
     * 前台列表页
     */
    @RequestMapping("/xuqiulist")
    public String index() {
        String order = Request.get("order", "id");
        String sort = Request.get("sort", "desc");

        Example example = new Example(Xuqiu.class);
        Example.Criteria criteria = example.createCriteria();
        String where = " 1=1 ";
        where += getWhere();
        criteria.andCondition(where);
        if (sort.equals("desc")) {
            example.orderBy(order).desc();
        } else {
            example.orderBy(order).asc();
        }
        int page = request.getParameter("page") == null ? 1 : Integer.valueOf(request.getParameter("page"));
        page = Math.max(1, page);
        List<Xuqiu> list = service.selectPageExample(example, page, 12);

        request.setAttribute("list", list);
        request.setAttribute("where", where);
        assign("orderby", order);
        assign("sort", sort);
        return "xuqiulist";
    }


    @RequestMapping("/xuqiu_add")
    public String add() {
        return "xuqiu_add";
    }

    @RequestMapping("/xuqiuadd")
    public String addWeb() {
        if (!checkLogin()) {
            return showError("尚未登录", "./");
        }
        return "xuqiuadd";
    }


    @RequestMapping("/xuqiu_updt")
    public String updt() {
        int id = Request.getInt("id");
        // 获取行数据，并赋值给前台jsp页面
        Xuqiu mmm = service.find(id);
        request.setAttribute("mmm", mmm);
        request.setAttribute("updtself", 0);
        return "xuqiu_updt";
    }

    /**
     * 添加内容
     *
     * @return
     */
    @RequestMapping("/xuqiuinsert")
    public String insert() {
        String tmp = "";
        Xuqiu post = new Xuqiu();  // 创建实体类
        // 设置前台提交上来的数据到实体类中
        post.setXuqiubianhao(Request.get("xuqiubianhao"));

        post.setBiaoti(Request.get("biaoti"));

        post.setJianglijifen(Request.getInt("jianglijifen"));

        post.setNeirong(util.DownloadRemoteImage.run(Request.get("neirong")));

        post.setZhuangtai(Request.get("zhuangtai"));

        post.setFaburen(Request.get("faburen"));


        post.setAddtime(Info.getDateStr()); // 设置添加时间
        service.insert(post); // 插入数据
        int charuid = post.getId().intValue();

        //插入 帖子 编号
        String res = String.format("X%5s", charuid);
        res = res.replaceAll("\\s", "0");
        Query.execute("UPDATE xuqiu SET xuqiubianhao='" + res + "' WHERE id='" + charuid + "'");

        return showSuccess("保存成功", Request.get("referer").equals("") ? request.getHeader("referer") : Request.get("referer"));
    }

    /**
     * 更新内容
     *
     * @return
     */
    @RequestMapping("/xuqiuupdate")
    public String update() {
        // 创建实体类
        Xuqiu post = new Xuqiu();
        // 将前台表单数据填充到实体类
        if (!Request.get("xuqiubianhao").equals(""))
            post.setXuqiubianhao(Request.get("xuqiubianhao"));
        if (!Request.get("biaoti").equals(""))
            post.setBiaoti(Request.get("biaoti"));
        if (!Request.get("jianglijifen").equals(""))
            post.setJianglijifen(Request.getInt("jianglijifen"));
        if (!Request.get("neirong").equals(""))
            post.setNeirong(util.DownloadRemoteImage.run(Request.get("neirong")));
        if (!Request.get("zhuangtai").equals(""))
            post.setZhuangtai(Request.get("zhuangtai"));
        if (!Request.get("faburen").equals(""))
            post.setFaburen(Request.get("faburen"));

        post.setId(Request.getInt("id"));
        service.update(post); // 更新数据
        int charuid = post.getId().intValue();
        return showSuccess("保存成功", Request.get("referer")); // 弹出保存成功，并跳转到前台提交的 referer 页面
    }

    /**
     * 后台详情
     */
    @RequestMapping("/xuqiu_detail")
    public String detail() {
        int id = Request.getInt("id");
        Xuqiu map = service.find(id);  // 根据前台url 参数中的id获取行数据
        request.setAttribute("map", map);  // 把数据写到前台
        return "xuqiu_detail";  // 详情页面：WebRoot\xuqiu_detail.jsp
    }

    /**
     * 前台详情
     */
    @RequestMapping("/xuqiudetail")
    public String detailweb() {
        int id = Request.getInt("id");
        Xuqiu map = service.find(id);


        request.setAttribute("map", map);
        return "xuqiudetail";    // 前台详情页面：WebRoot\xuqiudetail.jsp
    }

    /**
     * 删除
     */
    @RequestMapping("/xuqiu_delete")
    public String delete() {
        if (!checkLogin()) {
            return showError("尚未登录");
        }
        int id = Request.getInt("id");  // 根据id 删除某行数据
        HashMap delMap = Query.make("xuqiu").find(id);

        service.delete(id);// 根据id 删除某行数据
        return showSuccess("删除成功", request.getHeader("referer"));//弹出删除成功，并跳回上一页
    }
}
