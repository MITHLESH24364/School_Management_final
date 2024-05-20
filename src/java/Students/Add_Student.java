/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package Students;

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


/**
 *
 * @author MITHLESH-SINGH
 */
public class Add_Student extends HttpServlet {

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
//            out.println("<title>Servlet Add_Student</title>");            
//            out.println("</head>");
//            out.println("<body>");
//            out.println("<h1>Servlet Add_Student at " + request.getContextPath() + "</h1>");
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
//    protected void doPost(HttpServletRequest request, HttpServletResponse response)
//            throws ServletException, IOException {
//        processRequest(request, response);
//        
//    String fullname = request.getParameter("fullname");
//String gender = request.getParameter("gender");
//String date_of_birth = request.getParameter("date_of_birth");
//String roll_no = request.getParameter("roll_no");
//String location = request.getParameter("location");
//String blood_group = request.getParameter("blood_group");
//String religion = request.getParameter("religion");
//String email = request.getParameter("email");
//String student_class = request.getParameter("class");
//String section = request.getParameter("section");
//String number = request.getParameter("number");
//String parent_name = request.getParameter("parent_name");
//String parent_no = request.getParameter("parent_no");
//String image = request.getParameter("image");
//    
//    Connection con = null;
//    PreparedStatement checkStmt = null;
//    PreparedStatement insertStmt = null;
//    ResultSet rs = null;
//    
//    try {
//        // Load and register JDBC driver
//        Class.forName("com.mysql.cj.jdbc.Driver");
//        
//        // Establish connection
//        con = DriverManager.getConnection("jdbc:mysql://localhost:3306/school_management_final", "root", "");
//        
//        // Check if the email already exists
//        String checkEmailSQL = "SELECT * FROM student_detail WHERE email = ?";
//        checkStmt = con.prepareStatement(checkEmailSQL);
//        checkStmt.setString(1, email);
//        rs = checkStmt.executeQuery();
//        
//        if (rs.next()) {
//            // Email already exists, handle response
//            PrintWriter out = response.getWriter();
//            out.println("<div class='alert-msg'>This Email is Already Used</div>");
//            RequestDispatcher d = request.getRequestDispatcher("add-student.jsp");
//            d.include(request, response);
//        } else {
//            // Insert new record
//            String insertSQL = 
//            "INSERT INTO student_detail (fullname, gender, date_of_birth, roll_no, location, blood_group, religion, email, student_class, section, number, parent_name, parent_no, image) "
//                    + "VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)";            
//            insertStmt.setString(1, fullname);
//            insertStmt.setString(2, gender);
//            insertStmt.setString(3, date_of_birth);
//            insertStmt.setString(4, roll_no);
//            insertStmt.setString(5, location);
//            insertStmt.setString(6, blood_group);
//            insertStmt.setString(7, religion);
//            insertStmt.setString(8, email);
//            insertStmt.setString(9, student_class);
//            insertStmt.setString(10, section);
//            insertStmt.setString(11, number);
//            insertStmt.setString(12, parent_name);
//            insertStmt.setString(13, parent_no);
//            insertStmt.setString(14, image);
//            insertStmt.executeUpdate();
//            
//            response.sendRedirect("index.jsp");
//        }
//    } catch (Exception e) {
//        e.printStackTrace();
//        PrintWriter out = response.getWriter();
//        out.println("<div class='alert-msg'>Error: " + e.getMessage() + "</div>");
//    } finally {
//        // Close resources
//        try {
//            if (rs != null) rs.close();
//            if (checkStmt != null) checkStmt.close();
//            if (insertStmt != null) insertStmt.close();
//            if (con != null) con.close();
//        } catch (SQLException e) {
//            e.printStackTrace();
//        }
//    }
//    }

    
//    protected void doPost(HttpServletRequest request, HttpServletResponse response)
//            throws ServletException, IOException {
//        processRequest(request, response);
//     
//        String account_id = request.getParameter("account_id");
//        String fullname = request.getParameter("fullname");
//        String gender = request.getParameter("gender");
//        String date_of_birth = request.getParameter("date_of_birth");
//        String roll_no = request.getParameter("roll_no");
//        String location = request.getParameter("location");
//        String blood_group = request.getParameter("blood_group");
//        String religion = request.getParameter("religion");
//        String email = request.getParameter("email");
//        String student_class = request.getParameter("student_class");
//        String section = request.getParameter("section");
//        String number = request.getParameter("number");
//        String parent_name = request.getParameter("parent_name");
//        String parent_no = request.getParameter("parent_no");
//        String image = request.getParameter("image");
//        String username = request.getParameter("username");
//        String password = request.getParameter("password");
//
//        
//        
//                        try {
//    Class.forName("com.mysql.cj.jdbc.Driver");
//    Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/school_management_final", "root", "");
//    Statement stmt = con.createStatement(); 
//
//    // Check if account_id is not null
//    if (account_id != null && !account_id.isEmpty()) {
//        stmt.execute("INSERT INTO students_detail VALUES ('" + account_id + "','" + fullname + "','" + gender + "','" + date_of_birth + "','" + roll_no + "','" + location + "','" + blood_group + "','" + religion + "','" + email + "','" + student_class + "','" + section + "','" + number + "','" + parent_name + "','" + parent_no + "','" + image + "','" + username + "','" + password + "')");
//
//        con.close();
//    
//        // Redirect after successful insertion
//        response.sendRedirect("index.jsp");
//    } else {
//        // Handle the case where account_id is null
//        // For example, you could log an error or perform some other action
//        System.out.println("Error: account_id is null");
//    }
//
//} catch (Exception e) {
//    System.out.println(e);
//}
//
//
//    }

    
//   protected void doPost(HttpServletRequest request, HttpServletResponse response)
//        throws ServletException, IOException {
//
//    String account_id = request.getParameter("account_id");
//    String fullname = request.getParameter("fullname");
//    String gender = request.getParameter("gender");
//    String date_of_birth = request.getParameter("date_of_birth");
//    String roll_no = request.getParameter("roll_no");
//    String location = request.getParameter("location");
//    String blood_group = request.getParameter("blood_group");
//    String religion = request.getParameter("religion");
//    String email = request.getParameter("email");
//    String student_class = request.getParameter("student_class"); // Ensure correct name
//    String section = request.getParameter("section");
//    String number = request.getParameter("number");
//    String parent_name = request.getParameter("parent_name");
//    String parent_no = request.getParameter("parent_no");
//    String image = request.getParameter("image");
//    String username = request.getParameter("username");
//    String password = request.getParameter("password");
//
//    Connection con = null;
//    PreparedStatement pstmt = null;
//
//    try {
//        Class.forName("com.mysql.cj.jdbc.Driver");
//        con = DriverManager.getConnection("jdbc:mysql://localhost:3306/school_management_final", "root", "");
//
//        String sql = "INSERT INTO students_detail (account_id, fullname, gender, date_of_birth, roll_no, location, blood_group, religion, email, student_class, section, number, parent_name, parent_no, image, username, password) VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)";
//        pstmt = con.prepareStatement(sql);
//
//        pstmt.setString(1, account_id);
//        pstmt.setString(2, fullname);
//        pstmt.setString(3, gender);
//        pstmt.setString(4, date_of_birth); // Ensure date format is correct
//        pstmt.setString(5, roll_no);
//        pstmt.setString(6, location);
//        pstmt.setString(7, blood_group);
//        pstmt.setString(8, religion);
//        pstmt.setString(9, email);
//        pstmt.setString(10, student_class);
//        pstmt.setString(11, section);
//        pstmt.setString(12, number);
//        pstmt.setString(13, parent_name);
//        pstmt.setString(14, parent_no);
//        pstmt.setString(15, image);
//        pstmt.setString(16, username);
//        pstmt.setString(17, password);
//
//        int rowsInserted = pstmt.executeUpdate();
//        if (rowsInserted > 0) {
//            // Redirect after successful insertion
//            response.sendRedirect("index.jsp");
//        } else {
//            // Handle the case where insertion failed
//            response.getWriter().println("Failed to insert data into the database.");
//        }
//
//    } catch (SQLException se) {
//        se.printStackTrace();
//        response.getWriter().println("SQL Error: " + se.getMessage());
//    } catch (ClassNotFoundException ce) {
//        ce.printStackTrace();
//        response.getWriter().println("Class Not Found Error: " + ce.getMessage());
//    } catch (Exception e) {
//        e.printStackTrace();
//        response.getWriter().println("An error occurred: " + e.getMessage());
//    } finally {
//        try {
//            if (pstmt != null) pstmt.close();
//            if (con != null) con.close();
//        } catch (SQLException se) {
//            se.printStackTrace();
//        }
//    }
//}
    
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
        throws ServletException, IOException {

    String fullname = request.getParameter("fullname");
    String gender = request.getParameter("gender");
    String date_of_birth = request.getParameter("date_of_birth");
    String roll_no = request.getParameter("roll_no");
    String location = request.getParameter("location");
    String blood_group = request.getParameter("blood_group");
    String religion = request.getParameter("religion");
    String email = request.getParameter("email");
    String student_class = request.getParameter("student_class"); // Ensure correct name
    String section = request.getParameter("section");
    String number = request.getParameter("number");
    String parent_name = request.getParameter("parent_name");
    String parent_no = request.getParameter("parent_no");
    String image = request.getParameter("image");
    String username = request.getParameter("username");
    String password = request.getParameter("password");

    Connection con = null;
    PreparedStatement pstmt = null;

    try {
        Class.forName("com.mysql.cj.jdbc.Driver");
        con = DriverManager.getConnection("jdbc:mysql://localhost:3306/school_management_final", "root", "");

        String sql = "INSERT INTO students_detail (fullname, gender, date_of_birth, roll_no, location, blood_group, religion, email, student_class, section, number, parent_name, parent_no, image, username, password) VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)";
        pstmt = con.prepareStatement(sql);

        pstmt.setString(1, fullname);
        pstmt.setString(2, gender);
        pstmt.setString(3, date_of_birth); // Ensure date format is correct
        pstmt.setString(4, roll_no);
        pstmt.setString(5, location);
        pstmt.setString(6, blood_group);
        pstmt.setString(7, religion);
        pstmt.setString(8, email);
        pstmt.setString(9, student_class);
        pstmt.setString(10, section);
        pstmt.setString(11, number);
        pstmt.setString(12, parent_name);
        pstmt.setString(13, parent_no);
        pstmt.setString(14, image);
        pstmt.setString(15, username);
        pstmt.setString(16, password);

        int rowsInserted = pstmt.executeUpdate();
        if (rowsInserted > 0) {
            // Redirect after successful insertion
            response.sendRedirect("index.jsp");
        } else {
            // Handle the case where insertion failed
            response.getWriter().println("Failed to insert data into the database.");
        }

    } catch (SQLException se) {
        se.printStackTrace();
        response.getWriter().println("SQL Error: " + se.getMessage());
    } catch (ClassNotFoundException ce) {
        ce.printStackTrace();
        response.getWriter().println("Class Not Found Error: " + ce.getMessage());
    } catch (Exception e) {
        e.printStackTrace();
        response.getWriter().println("An error occurred: " + e.getMessage());
    } finally {
        try {
            if (pstmt != null) pstmt.close();
            if (con != null) con.close();
        } catch (SQLException se) {
            se.printStackTrace();
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
