<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<link rel="stylesheet" href="/res/css/user/login.css" ver="1">
<div class="wrap">
    <form action="/user/login" method="post">
        <div><input type="text" name="uid" placeholder="아이디"></div>
        <div><input type="password" name="upw" placeholder="비밀번호"></div>
        <div><input type="submit" value="로그인"></div>
        <div><a href="/user/join"><input type="button" value="회원가입"></a></div>
        <div><input type="button" value="비밀번호 보이기"></div>
    </form>
</div>