/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package control.me;

import dal.RecordDAO;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import model.Biochemical;

/**
 *
 * @author HIEU19
 */
@WebServlet(name = "CreateBioServlet", urlPatterns = {"/create-bio"})
public class CreateBioServlet extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet CreateResultServlet2</title>");            
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet CreateResultServlet2 at " + request.getContextPath() + "</h1>");
            out.println("</body>");
            out.println("</html>");
        }
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        request.getRequestDispatcher("view/create-bio.jsp").forward(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        HttpSession session = request.getSession();
        String code = (String) session.getAttribute("rscode");
        
        double ure = Double.parseDouble(request.getParameter("ure"));
        double glucose = Double.parseDouble(request.getParameter("glucose"));
        double creatinine = Double.parseDouble(request.getParameter("creatinine"));
        double uric = Double.parseDouble(request.getParameter("uric"));
        double protein = Double.parseDouble(request.getParameter("protein"));
        double cho = Double.parseDouble(request.getParameter("cho"));
        double calcium = Double.parseDouble(request.getParameter("calcium"));
        double ph = Double.parseDouble(request.getParameter("ph"));
        
        Biochemical b = new Biochemical(ure, glucose, creatinine, uric, protein, cho, calcium, ph, code);
        new RecordDAO().insertBio(b);
        response.sendRedirect("view/option.jsp");
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
