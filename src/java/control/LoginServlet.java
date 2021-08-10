package control;

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor...
 */
import dal.UserDAO;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import model.User;

/**
 *
 * @author HIEU19
 */
@WebServlet(name = "login", urlPatterns = {"/login"})
public class LoginServlet extends HttpServlet {

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
        request.getRequestDispatcher("login.jsp").forward(request, response);
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response.
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        Cookie cookies[] = request.getCookies();

        String user = null;
        String pass = null;
        if (cookies != null) {
            for (Cookie cooky : cookies) {
                if (cooky.getName().equals("user_cookie")) {
                    user = cooky.getValue();
                }
                if (cooky.getName().equals("pass_cookie")) {
                    request.setAttribute("password", cooky.getValue());
                    pass = cooky.getValue();
                }
            }
        }
        UserDAO dao = new UserDAO();
        User acc = dao.checkLogin(user, pass);
        if (acc == null) {
            request.getRequestDispatcher("view/login.jsp").forward(request, response);
        } else {
            HttpSession session = request.getSession();
            session.setAttribute("acc", acc);
            response.sendRedirect("home");
        }
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
        String username = request.getParameter("user");
        String password = request.getParameter("pass");
        String remember = request.getParameter("remember");

        UserDAO dao = new UserDAO();
        User acc = dao.checkLogin(username, password);

        if (dao.checkUser(username) == null) {
            request.setAttribute("w_name", "Username is not correct");
            request.getRequestDispatcher("view/login.jsp").forward(request, response);
        } else if (acc == null) {
            request.setAttribute("wrong", "Password is not correct");
            request.getRequestDispatcher("view/login.jsp").forward(request, response);
        } else {
            HttpSession session = request.getSession();
            session.setAttribute("acc", acc);
//            Cookie c = new Cookie("user_cookie", username);
//            Cookie p = new Cookie("pass_cookie", password);
//            if (remember != null) {
//                c.setMaxAge(10);
//                p.setMaxAge(10);
//            } else {
//                c.setMaxAge(0);
//                p.setMaxAge(0);
//            }
//            response.addCookie(c);
//            response.addCookie(p);

            response.sendRedirect("home");
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
