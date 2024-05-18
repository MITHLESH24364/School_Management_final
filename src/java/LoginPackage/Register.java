/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package LoginPackage;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import static jdk.nashorn.internal.runtime.Debug.id;
import password.password;


/**
 *
 * @author MITHLESH-SINGH
 */
public class Register extends HttpServlet {

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
//        try (PrintWriter out = response.getWriter()) {
//            /* TODO output your page here. You may use following sample code. */
//            out.println("<!DOCTYPE html>");
//            out.println("<html>");
//            out.println("<head>");
//            out.println("<title>Servlet Register</title>");            
//            out.println("</head>");
//            out.println("<body>");
//            out.println("<h1>Servlet Register at " + request.getContextPath() + "</h1>");
//            out.println("</body>");
//            out.println("</html>");
//        }
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
        
         password p = new password();
    String name = request.getParameter("name");
    String email = request.getParameter("email");
    String username = request.getParameter("username");
    String password = p.hash(request.getParameter("password"));
    String position = request.getParameter("position");
    
    Connection con = null;
    PreparedStatement checkStmt = null;
    PreparedStatement insertStmt = null;
    ResultSet rs = null;
    
    try {
        // Load and register JDBC driver
        Class.forName("com.mysql.cj.jdbc.Driver");
        
        // Establish connection
        con = DriverManager.getConnection("jdbc:mysql://localhost:3306/school_management_final", "root", "");
        
        // Check if the email already exists
        String checkEmailSQL = "SELECT * FROM admin_detail WHERE email = ?";
        checkStmt = con.prepareStatement(checkEmailSQL);
        checkStmt.setString(1, email);
        rs = checkStmt.executeQuery();
        
        if (rs.next()) {
            // Email already exists, handle response
            PrintWriter out = response.getWriter();
            out.println("<div class='alert-msg'>This Email is Already Used</div>");
            RequestDispatcher d = request.getRequestDispatcher("register.jsp");
            d.include(request, response);
        } else {
            // Insert new record
            String insertSQL = "INSERT INTO admin_detail (name, email, username, password, position) VALUES (?, ?, ?, ?, ?)";
            insertStmt = con.prepareStatement(insertSQL);
            insertStmt.setString(1, name);
            insertStmt.setString(2, email);
            insertStmt.setString(3, username);
            insertStmt.setString(4, password);
            insertStmt.setString(5, position);
            insertStmt.executeUpdate();
            
            response.sendRedirect("login.jsp");
        }
    } catch (Exception e) {
        e.printStackTrace();
        PrintWriter out = response.getWriter();
        out.println("<div class='alert-msg'>Error: " + e.getMessage() + "</div>");
    } finally {
        // Close resources
        try {
            if (rs != null) rs.close();
            if (checkStmt != null) checkStmt.close();
            if (insertStmt != null) insertStmt.close();
            if (con != null) con.close();
        } catch (SQLException e) {
            e.printStackTrace();
        }
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
