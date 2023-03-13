/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package news_control;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import news_dao.DAO;
import news_entity.News;

/**
 *
 * @author DELL VOSTRO 5510
 */
@WebServlet(name = "Test_JSTL", urlPatterns = {"/Test_JSTL"})
public class Test_JSTL extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        DAO dao = new DAO();
        List<News> List = dao.getAllNews();
        
        request.setAttribute("myList", List);
        request.getRequestDispatcher("Test_JSTL.jsp").forward(request, response);
    }

}
