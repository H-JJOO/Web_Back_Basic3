<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<link rel="stylesheet" href="/res/css/board/list.css" ver="1">
<div>
    <table>
        <tr>
            <th>번호</th>
            <th>제목</th>
            <th>조회수</th>
            <th>작성자</th>
            <th>작성일자</th>
        </tr>

        <c:forEach items="${requestScope.list}" var="item">
            <tr>
                <td>${item.iboard}</td>
                <td>${item.title}</td>
                <td>${item.hit}</td>
                <td>${item.writerNm}</td>
                <td>${item.rdt}</td>
            </tr>
        </c:forEach>
    </table>
</div>