package com.koreait.board2.user;

import com.koreait.board2.Utils;
import com.koreait.board2.dao.UserDAO;
import com.koreait.board2.user.model.LoginResult;
import com.koreait.board2.user.model.UserEntity;
import org.apache.catalina.User;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;

@WebServlet("/user/login")
public class UserLoginSerlvet extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
        Utils.displayView("로그인", "/user/login", req, res);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
        String uid = req.getParameter("uid");
        String upw = req.getParameter("upw");

        UserEntity param = new UserEntity();

        param.setUid(uid);
        param.setUpw(upw);

        LoginResult lr = UserDAO.login(param);
        String err = null;

        switch (lr.getResult()) {
            case 1:
                HttpSession session = req.getSession();
                session.setAttribute("loginUser", lr.getLoginUser());
                res.sendRedirect("/board/list");
                return;
            case 2:
                err = "아이디를 확인하세요.";
                break;
            case 3:
                err = "비밀번호를 확인하세요.";
                break;
            case 0:
                err = "로그인을 실패하였습니다.";
                break;
        }
        req.setAttribute("err", err);
        doGet(req, res);
    }
}