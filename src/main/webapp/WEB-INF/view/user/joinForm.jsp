<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="../layout/header.jsp" %>
    <div class="flex_box"">
        <h1 class="title">Join Page</h1>
    </div>
    <hr/>
    <div class="flex_box">
        <form action="/join" method="post">
            <table border="1">
                <tr>
                    <th>유저네임</th>
                    <td><input type="text" name="username" id="" placeholder="사용자 이름을 입력하세요" required><br/></td>
                </tr>
                <tr>
                    <th>패스워드</th>
                    <td><input type="password" name="password" id="" placeholder="비밀번호를 입력하세요" required><br/></td>
                </tr>
                <tr>
                    <th>이메일</th>
                    <td><input type="email" name="email" id="" placeholder="이메일을 입력하세요" required><br/></td>
                </tr>
            </table>
            <input type="submit" value="회원가입">
        </form>
    </div>
    <%@ include file="../layout/footer.jsp" %>