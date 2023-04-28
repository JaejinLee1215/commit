<!DOCTYPE HTML>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ page import="java.util.List" %>
<%@ page import="org.example.Board" %>

<html>
<head>
    <title>CommitTogether</title>
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1, user-scalable=no" />
    <link rel="stylesheet" href="css/style.css" />
    <!--  <link rel="stylesheet" href="css/board.css" />-->
    <link rel="shortcut icon" href="/image/favicon-16x16.png" type="image/png">
</head>
<body class="is-preload left-sidebar">
<div id="page-wrapper">

    <!-- Header -->
    <div id="header-wrapper">
        <header id="header" class="container">

            <!-- Logo -->
            <div id="logo">
                <h1><a href="index.html">CommitTogether</a></h1>
                <span>by HTML5 UP</span>
            </div>

            <!-- Nav -->
            <nav id="nav">
                <ul>
                    <li><a href="index.html">Welcome</a></li>
                    <li>
                        <a href="#">Dropdown</a>
                        <ul>
                            <li><a href="#">C</a></li>
                            <li><a href="#">C++</a></li>
                            <li><a href="#">C#</a>
                            <li><a href="#">Python</a></li>
                            <li><a href="#">Java</a></li>
                            <li><a href="#">HTML</a></li>
                            <li><a href="#">CSS</a></li>
                            <li><a href="#">JavaScript</a></li>
                    </li>
                </ul>

                </li>
                <li class="current"><a href="left_sidebar.html">Left Sidebar</a></li>
                <li><a href="list">List</a></li>
                </ul>
            </nav>

        </header>
    </div>

    <div class="container">
        <h1>자유게시판</h1>
        <select class="custom-select">
            <option value="option1">C</option>
            <option value="option2">C++</option>
            <option value="option3">C#</option>
            <option value="option4">Java</option>
            <option value="option5">HTML+CSS+JavaScript</option>
            <option value="option6">Python</option>
        </select>
        <table class="rwd-table">
            <thread>
            <tr>
                <th>ID</th>
                <th>제목</th>
                <th>작성자</th>
                <th>언어</th>
            </tr>
            </thread>
            <tbody>
                <%
                    List<Board> postList = (List<Board>) request.getAttribute("postList");
                    if (postList != null && !postList.isEmpty()) {
                        for (Board post : postList) {
                %>
                    <tr>
                        <td><%= post.getID() %></td>
                        <td><%= post.getTitle() %></td>
                        <td><%= post.getAuthor() %></td>
                        <td><%= post.getLanguage() %></td>
                    </tr>
                <%
                        }
                    } else {
                        out.print("<tr><td colspan='4'>No posts found</td></tr>");
                    }
                %>
            </tbody>
        </table>
        <a href="board.jsp" style="position: absolute; right: 0;">
            <button>글쓰기</button>
        </a>

        <h3>Resize Me</h3>
    </div>

    <script src="src/main/webapp/js/board.js"></script>

</html>