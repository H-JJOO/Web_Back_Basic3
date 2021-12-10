package com.koreait.board2;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

public class Utils {
    public static void displayView(String title, String view, HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
        req.setAttribute("title", title);
        req.setAttribute("page", view);
        disForward(req, res, "/layout");
    }

    public static void disForward(HttpServletRequest req, HttpServletResponse res, String jsp) throws ServletException, IOException {
        String path = "/WEB-INF/view" + jsp + ".jsp";
        req.getRequestDispatcher(path).forward(req, res);
    }

    //문자열을 정수로 바꿔서 리턴, 예외발생시 defVal 리턴 parseStringToInt
    public static int parseStringToInt(String str, int defVal) {
        try {
            return Integer.getInteger(str);
        } catch (Exception e) {
            return defVal;
        }
    }

    //문자열을 정수로 바꿔서 리턴, 예외발생시 0 리턴 parseStringToInt
    public static int parseStringToInt(String str) {
        return parseStringToInt(str, 0);
    }

    //문자열을 정수로 바꿔서 리턴 getParameterInt
    public static int getParameterInt(HttpServletRequest req, String key) {
        String strVal = req.getParameter(key);
        int intVal = parseStringToInt(strVal);
        return intVal;
    }

    //문자열을 정수로 바꿔서 리턴해주는데 0일 경우 defVal 리턴 getParameterInt
    public static int getParameterInt(HttpServletRequest req, String key, int defVal) {
        return parseStringToInt(req.getParameter(key), defVal);
    }
}
