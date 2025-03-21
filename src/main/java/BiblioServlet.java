

import dao.DocumentDAO;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import models.Document;


import javax.naming.Context;
import javax.naming.InitialContext;
import javax.naming.NamingException;
import javax.sql.DataSource;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.SQLException;
import java.time.LocalDate;
import java.util.List;
import java.util.logging.Logger;

public class BiblioServlet extends HttpServlet {
    DocumentDAO dao = new DocumentDAO();
    @Override
    public void init(){

    }
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String demande = request.getParameter("demande");

        if ("listeDocument".equals(demande)) {
            List<Document> documents=dao.retrieveDocument();
            request.setAttribute("documents", documents);
            request.getRequestDispatcher("document.jsp").forward(request, response);

        }
    }
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
    @Override
    public void destroy(){

    }
}
