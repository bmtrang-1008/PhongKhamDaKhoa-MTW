/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package control;

import dal.DoctorDAO;
import dal.RecordDAO;
import java.io.IOException;
import java.time.LocalDate;
import java.time.format.DateTimeFormatter;
import java.util.ArrayList;
import java.util.Random;
import javax.naming.spi.DirStateFactory.Result;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import model.Doctor;
import model.MedicalRecord;

/**
 *
 * @author HIEU19
 */
@WebServlet(name = "generate", urlPatterns = {"/generate"})
public class GenCode extends HttpServlet {

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

        ArrayList<MedicalRecord> lsRs = new RecordDAO().getAll();
        Random r = new Random();
        String rs = "1234567890";
        String text = "";
        for (char i = 'A'; i <= 'Z'; i++) {
            rs += i;
        }

        for (int i = 0; i < 8; i++) {
            text += rs.charAt(r.nextInt(rs.length()));
        }

        for (MedicalRecord lsR : lsRs) {
            while (lsR.getCode().equals(text)) {
                for (int i = 0; i < 8; i++) {
                    text += rs.charAt(r.nextInt(rs.length()));
                }
            }
        }

        String date = LocalDate.now().format(DateTimeFormatter.ofPattern("yyyy-MM-dd"));
        request.setAttribute("date", date);
         ArrayList<Doctor> dlist = new DoctorDAO().getDoctor();
        request.setAttribute("doctors", dlist);
        HttpSession session = request.getSession();

        session.setAttribute("create_code", text);
        request.getRequestDispatcher("view/create-result.jsp").forward(request, response);
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
        processRequest(request, response);
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
        processRequest(request, response);
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
