/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package org.camp.java;

import java.io.BufferedReader;
import java.io.File;
import java.io.FileWriter;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.util.Date;
import java.text.SimpleDateFormat; 
import java.io.FileReader;


/**
 *
 * @author yuya
 */
public class Student01 extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *　１０．紹介していないJAVAの標準クラスを利用して、処理を作成してください。

         　講義では紹介されていないJAVAの標準クラスはたくさん存在します。
　         １つJAVAの標準クラスを選び、実際にロジックを作成してみてください。


　         また、この処理を作成するに当たり、下記を必ず実装してください。
 
　         ①処理の経過を書き込むログファイルを作成する。
　         ②処理の開始、終了のタイミングで、ログファイルに開始・終了の書き込みを行う。
　         ③書き込む内容は、「日時　状況（開始・終了）」の形式で書き込む。
　         ④最後に、ログファイルを読み込み、その内容を表示してください。

     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        
        File txt = new File("/Users/yuya/NetBeansProjects/SAMPL/src/java/org/camp/java/test.txt");
        FileWriter fw = new FileWriter(txt,true);
        
        FileReader fr = new  FileReader(txt);
        BufferedReader br =new   BufferedReader(fr);
        String s ="";
        
        
        Date date = new Date();
        SimpleDateFormat sdf = new SimpleDateFormat("yyyy年MM月dd日HH時mm分ss秒");
        String sdate = sdf.format(date);
        
        fw.write("開始");
        fw.write(sdate);
        
        String str ="";
        double comp = Math.floor(Math.random()*3);
        double User = 0;
               if( comp == User){
                   str ="あいこ";
               }else if((comp + 1) % 3 == User){
                   str = "あなたの負けです";
               }else{
                   str ="あなたの勝ちです";
               }
              
                  
        
        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet Student01</title>");            
            out.println("</head>");
            out.println("<body>");
            out.println(str);
            out.println(comp);
            out.println(User);
            while( (s=br.readLine()) != null){  
                out.println(s+"<br>");
            }
            fw.write("終了");
            fw.write(sdate);
            fw.close();
            out.println("<h1>Servlet Student01 at " + request.getContextPath() + "</h1>");
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
