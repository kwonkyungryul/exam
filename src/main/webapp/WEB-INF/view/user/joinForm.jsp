<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
</head>
<body>
    <h1>Join Page</h1>
    <hr/>
    <form action="/join" method="post">
        <input type="text" name="username" id="" placeholder="사용자 이름을 입력하세요" required><br/>
        <input type="password" name="password" id="" placeholder="비밀번호를 입력하세요" required><br/>
        <input type="email" name="email" id="" placeholder="이메일을 입력하세요" required><br/>
        <input type="submit" value="회원가입">
    </form>
</body>
</html>