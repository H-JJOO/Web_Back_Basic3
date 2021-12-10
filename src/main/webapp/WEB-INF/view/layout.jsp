<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<!doctype html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <meta name="viewport"
          content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <link rel="stylesheet" href="/res/css/common.css" ver="5">
    <title>${requestScope.title}</title>
</head>
<body>
    <div class="container">
        <header>
            <ul class="topMenu">
                <li><a href="/board/list">게시판</a></li>
                <c:if test="${sessionScope.loginUser != null}">
                    <li><a href="/board/regmod">글쓰기</a></li>
                    <li class="welcome">${sessionScope.loginUser.nm}(${sessionScope.loginUser.uid})님 환영합니다.</li>
                    <li class="logoutMove"><a href="/user/logout">로그아웃</a></li>

                </c:if>
                <c:if test="${sessionScope.loginUser == null}">
                    <li><a href="/user/login">로그인</a></li>
                    <li><a href="/user/join">회원가입</a></li>


                </c:if>


            </ul>
        </header>
        <main>
            <jsp:include page="/WEB-INF/view${requestScope.page}.jsp"></jsp:include>
        </main>
        <footer>
            KOREA IT
        </footer>
    </div>
</body>
</html>