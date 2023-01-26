<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <style>
        .flex_box {
            display: flex;
            justify-content: center;
        }

        li {
            list-style: none;
        }

        .t_center {
            text-align: center;
        }
    </style>
</head>
<body>
    <div class="flex_box t_center">
        <ul class="flex_box">
            <li>
                <a href="/loginForm">로그인</a>&nbsp;
            </li>
            <li>
                <a href="/joinForm">회원가입</a>
            </li>
        </ul>
    </div>