<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="../layout/header.jsp" %>
    <div class="flex_box">
        <h1 class="title">Board List</h1>
    </div>
    <hr/>
    <div class="flex_box">
        <div class="">
            <table border="1">
                <tr>
                    <th>번호</th>
                    <th>제목</th>
                    <th>작성일</th>
                </tr>
                <c:forEach items="${boardList}" var="board">
                <tr>
                    <td>${board.id}</td>
                    <td><strong><a href="/board/${board.id}/detail">${board.title}</a></strong></td>
                    <td>${board.createdAt}</td>
                </tr>
                </c:forEach>
            </table>
            <a href="/board/addForm">글쓰기</a>
        </div>
    </div>
    
<%@ include file="../layout/footer.jsp" %>