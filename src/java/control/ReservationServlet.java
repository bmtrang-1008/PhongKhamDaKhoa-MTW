/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package control;

import dal.ReservationDAO;
import java.io.IOException;
import java.sql.Date;
import java.util.ArrayList;
import java.util.Calendar;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import model.Reservation;
import model.User;

/**
 *
 * @author HIEU19
 */
@WebServlet(name = "reservation", urlPatterns = {"/reservation"})
public class ReservationServlet extends HttpServlet {

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
             request.getRequestDispatcher("view/reversation.jsp").forward(request, response);

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
        User u = ((User) session.getAttribute("acc"));
        String name =request.getParameter("name");
        String email =request.getParameter("email");
        Date date = Date.valueOf(request.getParameter("date"));
        String department = request.getParameter("department");
        String phone = request.getParameter("phone");
        String insurance_code = request.getParameter("icode");
        String message = request.getParameter("message");
        ReservationDAO res = new ReservationDAO();
        ArrayList<Reservation> list = new ArrayList<>();
        java.sql.Date cdate = new java.sql.Date(Calendar.getInstance().getTime().getTime());
        Reservation r = new Reservation();
        r.setUser_id(u.getId());
        r.setEmail(email);
        r.setStatus(0);
        r.setFull_name(name);
        r.setExam_date(date);
        r.setExam_dept(department);
        r.setPhone(phone);
        r.setInsurance_code(insurance_code);
        r.setDetail_note(message);
        r.setCrated_date(cdate);
        list.add(r);
        res.insert(r);
        request.setAttribute("listReservation", list);
        response.sendRedirect("reservation");
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