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
import model.BloodCell;

/**
 *
 * @author HIEU19
 */
@WebServlet(name = "CreateBloodCellServlet", urlPatterns = {"/create-blood"})
public class CreateBloodCellServlet extends HttpServlet {

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
            out.println("<title>Servlet CreateBloodCellServlet</title>");            
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet CreateBloodCellServlet at " + request.getContextPath() + "</h1>");
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
        request.getRequestDispatcher("view/create-blood.jsp").forward(request, response);
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
        
        double hc = Double.parseDouble(request.getParameter("hc"));
        double hemo = Double.parseDouble(request.getParameter("hemo"));
        double hema = Double.parseDouble(request.getParameter("hema"));
        double reti = Double.parseDouble(request.getParameter("reti"));
        double sett = Double.parseDouble(request.getParameter("sett"));
        double flow = Double.parseDouble(request.getParameter("flow"));
        double pat = Double.parseDouble(request.getParameter("pat"));
        String type = (request.getParameter("type"));
        
        BloodCell b = new BloodCell(hc, hemo, hema, reti, sett, flow, pat, type, code);
        new RecordDAO().insertBlood(b);
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
