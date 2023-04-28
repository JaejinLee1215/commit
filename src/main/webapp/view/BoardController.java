package com.example.demo.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.example.demo.entity.Board;
import com.example.demo.service.BoardService;
import com.example.demo.service.impl.BoardServiceImpl;

public class BoardController extends HttpServlet {

    private static final long serialVersionUID = 1L;

    private BoardService boardService = new BoardServiceImpl();

    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        List<Board> list = boardService.getBoardList();
        request.setAttribute("list", list);
        request.getRequestDispatcher("/WEB-INF/views/board/list.jsp").forward(request, response);

    }
}
