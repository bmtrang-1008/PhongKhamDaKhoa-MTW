/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package control;

import dal.DepartmentDAO;
import dal.DoctorDAO;
import dal.SendMail;
import dal.UserDAO;
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
import model.Department;
import model.Doctor;
import model.User;

/**
 *
 * @author HIEU19
 */
@WebServlet(name = "DoctorSignUpServlet", urlPatterns = {"/doctor-signup"})
public class DoctorSignUpServlet extends HttpServlet {

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
        ArrayList<Department> list = new DepartmentDAO().getAll();
        request.setAttribute("dept", list);
        request.getRequestDispatcher("view/signup-for-doctor.jsp").forward(request, response);
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
            String user = request.getParameter("username");
            String pass = request.getParameter("pass");
            String name = request.getParameter("name");
            Date dob = Date.valueOf(request.getParameter("dob"));
            boolean gender = request.getParameter("gender").equals("1");
            String phone = request.getParameter("phone");
            String email = request.getParameter("email");
//            int dept = Integer.parseInt(request.getParameter("department"));
//            int room = Integer.parseInt(request.getParameter("room"));
//            String year = request.getParameter("year");

            UserDAO dao = new UserDAO();
            User u = dao.checkUser(user);
            if (u != null) {
                String mess = "User name existed, please try again!";
                request.setAttribute("mess", mess);
                ArrayList<Department> list = new DepartmentDAO().getAll();
                request.setAttribute("dept", list);
                request.getRequestDispatcher("view/signup-for-doctor.jsp").forward(request, response);
            } else {
                java.sql.Date date = new java.sql.Date(Calendar.getInstance().getTime().getTime());
                User uu = new User(2, user, pass, email, phone, name, dob, gender, "null", date);
                dao.insertAll(uu);
//                DoctorDAO ddao = new DoctorDAO();
//                Doctor d = new Doctor(dept, room, year);
//                ddao.insert(d);
                
                ArrayList<Department> list = new DepartmentDAO().getAll();
                request.setAttribute("dept", list);
                
//                String mess2 = "Resigter successfully, please check your email to see our response";
//                request.setAttribute("mess2", mess2);
                SendMail mail = new SendMail();
                mail.sentEmail(email, "General Hospital of Agriculture notify", "Hi " + name + "\nYour membership application has been submitted. Please check your mailbox regularly to receive results from us.");
                HttpSession session = request.getSession();
                session.setAttribute("user", user);
                response.sendRedirect("signup-doctor2");
            }
        } catch (Exception e) {
            ArrayList<Department> list = new DepartmentDAO().getAll();
            request.setAttribute("dept", list);
            request.getRequestDispatcher("view/signup-for-doctor.jsp").forward(request, response);
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
