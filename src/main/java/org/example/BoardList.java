package org.example;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.Persistence;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

@WebServlet("/list")
public class BoardList extends HttpServlet {
    private static final long serialVersionUID = 1L;
    private EntityManagerFactory emf;

    @Override
    public void init() throws ServletException {
//        super.init();
        emf = Persistence.createEntityManagerFactory("commitTogether");
    }
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        EntityManager em = emf.createEntityManager();
        List<Board> postList = em.createQuery("SELECT b FROM Board b", Board.class).getResultList();
        em.close();

        request.setAttribute("postList", postList);
        RequestDispatcher dispatcher = request.getRequestDispatcher("list.jsp");
        dispatcher.forward(request, response);
    }

    @Override
    public void destroy() {
        emf.close();
    }
}