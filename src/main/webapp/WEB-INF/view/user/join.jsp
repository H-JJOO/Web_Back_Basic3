<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<link rel="stylesheet" href="/res/css/user/join.css" ver="2">
<div class="wrap">
    <form action="/user/join" method="post">
    <div><input type="text" name="uid" placeholder="아이디"></div>
    <div><input type="password" name="upw" placeholder="비밀번호"></div>
    <div><input type="password" name="upwCheck" placeholder="비밀번호확인"></div>
    <div><input type="text" name="nm" placeholder="이름"></div>
    <div>
        Gender :
        <label><input type="radio" name="gender" value="1" checked>남자</label>
        <label><input type="radio" name="gender" value="2" >여자</label>
    </div>
    <div><input type="submit" value="회원가입"></div>
    </form>
</div>