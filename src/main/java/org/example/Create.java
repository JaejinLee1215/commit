package org.example;

import javax.persistence.*;
import javax.servlet.*;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;
import java.io.*;

@WebServlet("/create1")
public class Create extends HttpServlet {
    private static final long serialVersionUID = 1L;
    private EntityManagerFactory emf;

    @Override
    public void init() throws ServletException {
//        super.init();
        emf = Persistence.createEntityManagerFactory("commitTogether");
    }
    @Override
    public void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException{
        doPost(request, response);
    }

    @Override
    public void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("UTF-8");
        EntityManager em = emf.createEntityManager();
//        String title = request.getParameter("title");
//        String author = request.getParameter("author");
//        String language = request.getParameter("language");
//        String content = request.getParameter("content");
        em.getTransaction().begin();

        Board poster = new Board();

        poster.setTitle(request.getParameter("title"));
        poster.setAuthor(request.getParameter("author"));
        poster.setLanguage(request.getParameter("language"));
        poster.setContent(request.getParameter("content"));

        em.persist(poster);

        em.getTransaction().commit();

        em.close();

        response.sendRedirect("./list");
    }

    @Override
    public void destroy() {
        emf.close();
    }
}