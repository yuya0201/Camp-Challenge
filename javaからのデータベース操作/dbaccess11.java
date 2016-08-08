/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.Calendar;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author yuya
 */
public class dbaccess11 extends HttpServlet {

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
        request.setCharacterEncoding("UTF-8");
        
        Connection db_con = null;
        PreparedStatement db_st = null;
        ResultSet db_data = null;
        Calendar cal = Calendar.getInstance();
        
        int year = Integer.parseInt(request.getParameter("year"));
        int month = Integer.parseInt(request.getParameter("month"));
        int day = Integer.parseInt(request.getParameter("day"));
        
        cal.set(year,month,day);
        
        java.sql.Date birthday = new java.sql.Date(cal.getTimeInMillis());
        
       
        
        
        
        try (PrintWriter out = response.getWriter()) {
            
               
                          try{
                Class.forName("com.mysql.jdbc.Driver").newInstance();
                db_con = DriverManager.getConnection("jdbc:mysql://localhost:8889/challenge_db","sato","02011991");
                db_st = db_con.prepareStatement("update profiles set name=?,tell=?,age=?,birthday=? where profilesID=?");
                db_st.setString(1,request.getParameter("name"));
                db_st.setString(2,request.getParameter("tell"));
                db_st.setInt(3,Integer.parseInt(request.getParameter("age")));
                db_st.setDate(4, birthday);
                db_st.setInt(5,Integer.parseInt(request.getParameter("profilesID")));
        
                db_st.executeUpdate();
                db_st.close();
                db_con.close();
                
            }catch(SQLException e_sql){
                out.println("接続時にエラーが発生しました:"+e_sql.toString());
            }catch(Exception e){
                out.println("接続時にエラーが発生しました:"+e.toString());
            }finally{
            if(db_con != null){
                try{
                db_con.close();                  
            }catch(Exception e_con){
                System.out.println(e_con.getMessage());
                  }
               }
            }
            
            
            
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet dbaccess11</title>");            
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet dbaccess11 at " + request.getContextPath() + "</h1>");
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
