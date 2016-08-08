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
public class dbaccess12 extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *課題12:検索用のフォームを用意し、名前、年齢、誕生日を使った複合検索ができるようにしてください。
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
      
        
        if(!request.getParameter("year").equals("")
                &&!request.getParameter("month").equals("")
                    &&!request.getParameter("day").equals("")){
                int year = Integer.parseInt(request.getParameter("year"));
                int month = Integer.parseInt(request.getParameter("month"));
                int day = Integer.parseInt(request.getParameter("day"));
                cal.set(year,month,day);
        }
        
        java.sql.Date birthday = new java.sql.Date(cal.getTimeInMillis());
        int age = 0;
        if(!request.getParameter("age").equals("")){
            age = Integer.parseInt(request.getParameter("age"));
        }
        
        
        
        try (PrintWriter out = response.getWriter()) {
            
               
                try{
                request.setCharacterEncoding("UTF-8");
                Class.forName("com.mysql.jdbc.Driver").newInstance();
                db_con = DriverManager.getConnection("jdbc:mysql://localhost:8889/challenge_db","sato","02011991");
                db_st = db_con.prepareStatement("select*from profiles where name=? or age=? or birthday=?");
              
                db_st.setString(1,request.getParameter("name"));
                db_st.setInt(2, age);
                db_st.setDate(3,birthday);
                
                db_data = db_st.executeQuery();
                
            
            
            
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet dbaccess12</title>");   
                  while(db_data.next()){
                    out.println("名前は"+db_data.getString("name")+"<br>");
                    out.println("年齢は"+db_data.getInt("age")+"<br>");
                    out.println("誕生日は"+db_data.getString("birthday")+"<br>");
                }
           
                db_data.close();
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
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet dbaccess12 at " + request.getContextPath() + "</h1>");
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
