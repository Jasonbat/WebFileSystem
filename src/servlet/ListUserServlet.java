package servlet;

import dao.UserDao;
import daoimpl.UserDaoImpl;
import entity.User;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.ArrayList;

/**
 * 显示所有的用户信息
 */
public class ListUserServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request,response);
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        //设置编码样式，防止出现乱码
        response.setCharacterEncoding("utf-8");
        request.setCharacterEncoding("utf-8");
        UserDao userDao = new UserDaoImpl();
        //获取用户列表
        ArrayList<User> userList = userDao.getAllUser();
        request.setAttribute("userList",userList);
        //请求转发
        request.getRequestDispatcher("../listuser.jsp").forward(request,response);

    }
}
