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
import model.PhysicalRecord;

/**
 *
 * @author HIEU19
 */
@WebServlet(name = "CreatePhysicalServlet", urlPatterns = {"/create-physical"})
public class CreatePhysicalServlet extends HttpServlet {

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
            out.println("<title>Servlet CreatePhysicalServlet</title>");            
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet CreatePhysicalServlet at " + request.getContextPath() + "</h1>");
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
        request.getRequestDispatcher("view/create-physical.jsp").forward(request, response);
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
        try {
            HttpSession session = request.getSession();
        String code = (String) session.getAttribute("rscode");
        double he = Double.parseDouble(request.getParameter("he"));
        double we = Double.parseDouble(request.getParameter("we"));
        double bmi = Double.parseDouble(request.getParameter("bmi"));
        int pul = Integer.parseInt(request.getParameter("pul"));
        int bl = Integer.parseInt(request.getParameter("bl"));
        String phy = request.getParameter("phy");
     
        PhysicalRecord r = new PhysicalRecord(he, we, bmi, pul, bl, phy, code);
        new RecordDAO().insertPhysical(r);
        response.sendRedirect("view/option.jsp");
        } catch (Exception e) {
            System.out.println(e.getMessage());
             response.sendRedirect("view/option.jsp");
        }
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
