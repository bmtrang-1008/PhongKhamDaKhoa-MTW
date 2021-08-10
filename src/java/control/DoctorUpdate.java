/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package control;

import dal.DepartmentDAO;
import dal.DoctorDAO;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Date;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import model.Doctor;
import model.User;

/**
 *
 * @author ACER
 */
@WebServlet(name = "DoctorUpdate", urlPatterns = {"/DoctorUpdate"})
public class DoctorUpdate extends HttpServlet {

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
            out.println("<title>Servlet DoctorUpdate</title>");            
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet DoctorUpdate at " + request.getContextPath() + "</h1>");
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
        String did = request.getParameter("did");
        Doctor d = new DoctorDAO().getOne(Integer.parseInt(did));
        request.getSession().setAttribute("tempDoc", d);
        request.setAttribute("doctor", d);
        request.setAttribute("depts", new DepartmentDAO().getAll());
        request.getRequestDispatcher("view/admin_edit_doctor.jsp").forward(request, response);
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
        String username = request.getParameter("username");
        String password = request.getParameter("password");
        String full_name = request.getParameter("full_name");
        String email = request.getParameter("email");
        String dob = request.getParameter("dob");
        String phone = request.getParameter("phone");
        String gender = request.getParameter("gender");
        String exp_year = request.getParameter("exp_year");
        String room_number = request.getParameter("room_number");
        String dept = request.getParameter("dept");
        //response.getWriter().print(username+"-"+password+"-"+full_name+"-"+email+"-"+dob+"-"+phone+"-"+gender+"-"+exp_year+"-"+room_number+"-"+dept+"-"+username+"-");
        Doctor d = (Doctor)request.getSession().getAttribute("tempDoc");
        User u = d.getUser();
        u.setUsername(username);
        u.setPassword(password);
        u.setFull_name(full_name);
        u.setEmail(email);
        try {
            u.setDob(Date.valueOf(dob));
        } catch (Exception e) {
            response.getWriter().print("dob");
        }
        u.setPhone(phone);
        u.setGender(Boolean.parseBoolean(gender));
        d.setExp_year(exp_year.split(" ")[0]);
        d.setRoom_number(Integer.parseInt(room_number));
        d.setDept_id(Integer.parseInt(dept));
        d.setUser(u);
        new DoctorDAO().Update(d);
//        new DoctorDAO().UpdateUser(d);
        response.sendRedirect("doctorlist?url=admin");
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
