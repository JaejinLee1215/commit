<!DOCTYPE HTML>
<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>

<html>
<head>
  <title>CommitTogether</title>
  <meta charset="utf-8" />
  <meta name="viewport" content="width=device-width, initial-scale=1, user-scalable=no" />
  <link rel="stylesheet" href="css/style.css" />
  <link rel="stylesheet" href="css/board.css" />
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
      </div>

      <div class="container">
        <h1>게시판</h1><br>
        <hr>
        <br>
        <form id="post-form" method="post" action="./create1">
          <select class="custom-select" id="language" name="language">
            <option value="C">C</option>
            <option value="C++">C++</option>
            <option value="C#">C#</option>
            <option value="Java">Java</option>
            <option value="HTML+CSS+JavaScript">HTML+CSS+JavaScript</option>
            <option value="Python">Python</option>
          </select>
          <input type="text" id="title" name="title" placeholder="제목">
          <input type="text" id="author" name="author" placeholder="작성자">
          <textarea id="content" name="content" placeholder="내용"></textarea>
          <button type="submit">작성</button></a>
        </form>
        <ul id="post-list" class="post-list"></ul>
        <div id="post-details" class="post-details">
          <h2 id="post-title" class="post-title"></h2>
          <p id="post-author" class="post-author"></p>
          <p id="post-content" class="post-content"></p>
        </div>
      </div>
      <script src="src/main/webapp/js/list.js"></script>
    </header>
  </div>
</div>
</body>
</html>