/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package control.me;

import dal.DoctorDAO;
import dal.PatientDAO;
import dal.RecordDAO;
import dal.SendMail;
import java.io.IOException;
import java.io.PrintWriter;
import java.time.LocalDate;
import java.time.format.DateTimeFormatter;
import java.util.ArrayList;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import model.Doctor;
import model.MedicalRecord;
import model.Patient;
import model.User;

/**
 *
 * @author HIEU19
 */
@WebServlet(name = "CreateResultServlet", urlPatterns = {"/create"})
public class CreateResultServlet extends HttpServlet {

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
            out.println("<title>Servlet CreateResultServlet</title>");            
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet CreateResultServlet at " + request.getContextPath() + "</h1>");
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
        String date = LocalDate.now().format(DateTimeFormatter.ofPattern("yyyy-MM-dd"));
        request.setAttribute("date", date);
        ArrayList<Doctor> dlist = new DoctorDAO().getDoctor();
        request.setAttribute("doctors", dlist);
        request.getRequestDispatcher("view/create-result.jsp").forward(request, response);
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
            String code = request.getParameter("code");
        String pname = request.getParameter("name");
        String phone = request.getParameter("phone");
        int age = Integer.parseInt(request.getParameter("age"));
        boolean gender = request.getParameter("gender").equals("male");
        String add = request.getParameter("address");
        String option = request.getParameter("option");
        String option_code = request.getParameter("option_code");
        if(option.equals("Non - Insurance")){
            option_code = "";
        }
        String diag = request.getParameter("diag");
        String f = request.getParameter("f");
        int doc_id = Integer.parseInt(request.getParameter("doc_id"));
            
        Patient p = new Patient(new PatientDAO().getPatient().size()+1, pname, age, add, phone, option, option_code, gender);
        PatientDAO pd = new PatientDAO();
        RecordDAO rd = new RecordDAO();
        MedicalRecord mr = new MedicalRecord();
        mr.setPatient_id(new PatientDAO().getPatient().size()+1);
        mr.setCode(code);
        mr.setDiag(diag);
        mr.setConclusion(f);
        mr.setDoctor_id(doc_id);
        rd.insert(mr);
        pd.insert(p);
        String email = request.getParameter("email");
       
        HttpSession session = request.getSession();
        session.setAttribute("rscode", code);
        new SendMail().sentEmail(email, "MTW notify", "Dear "+ pname +"\nWe have created your medical records \n Here is your medical code: " + code + "\nPlease go to http://localhost:8080/MTW/search to view your record\nThank you for using our service\nMTW Team.");
        
       response.sendRedirect("view/option.jsp");
        } catch (Exception e) {
            System.out.println(e.getMessage());
            response.sendRedirect("components/error.jsp");
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
