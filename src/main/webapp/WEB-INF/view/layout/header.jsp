<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <link href="../css/reset.css" rel="stylesheet" type="text/css">
    <link href="../css/style.css" rel="stylesheet" type="text/css">
</head>
<body>
    <div class="container">
        <div class="flex_box t_center">
            <div class="head_box">
                <ul class="flex_box">
                <c:choose>
                    <c:when test="${principal == null}">
                        <li>
                            <a href="/loginForm">로그인</a>&nbsp;
                        </li>
                        <li>
                            <a href="/joinForm">회원가입</a>
                        </li>
                    </c:when>
                    
                    <c:otherwise>
                        <li>
                            <a href="/user/userInfo">회원정보</a>&nbsp;
                        </li>
                        <li>
                            <a href="/logout">로그아웃</a>
                        </li>
                    </c:otherwise>
                </c:choose>
                </ul>
            </div>
        </div>