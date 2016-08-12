package jums;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author hayashi-s
 */
public class UpdateResult extends HttpServlet {

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
            throws ServletException, IOException, Exception {
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();
        try {
          HttpSession session = request.getSession();
           String accesschk = request.getParameter("ac");
            if(accesschk ==null || (Integer)session.getAttribute("ac")!=Integer.parseInt(accesschk)){
                throw new Exception("不正なアクセスです");
            }
            
            //フォームからの入力を所得
            UserDataBeans udb = new UserDataBeans();
            udb.setName(request.getParameter("name"));
            udb.setYear(request.getParameter("year"));
            udb.setMonth(request.getParameter("month"));
            udb.setDay(request.getParameter("day"));
            udb.setType(request.getParameter("type"));
            udb.setTell(request.getParameter("tell"));
            udb.setComment(request.getParameter("comment"));
            //例外があった場合
            ArrayList chkdata = udb.chkproperties();
            if(chkdata.size()!=0){throw new Exception(JumsHelper.getInstance().chkinput(chkdata));}
            
            
            UserDataDTO udd = new UserDataDTO();
            //クエリストリングから取得したIDを入力
            udd.setUserID(Integer.parseInt(request.getParameter("id")));
            //searchByIDメソッドを利用して上書きしたいデータをupdateDataに入れる
            UserDataDTO updateData;
            updateData = UserDataDAO .getInstance().searchByID(udd);
            udb.UD2DTOMapping(updateData);
        
        //UpDateメソッドを使用してデータをアップデート
            UserDataDAO .getInstance().update(updateData);
            
        //リクエストスコープ保存
            request.setAttribute("updateData", updateData);
            
        //セッション削除
            session.invalidate();
        
            request.getRequestDispatcher("/updateresult.jsp").forward(request, response);
            
            
            
            
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet UpdateResult</title>");            
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet UpdateResult at " + request.getContextPath() + "</h1>");
            out.println("</body>");
            out.println("</html>");
        } finally {
            out.close();
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
        try {
            processRequest(request, response);
        } catch (Exception ex) {
            Logger.getLogger(UpdateResult.class.getName()).log(Level.SEVERE, null, ex);
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
        try {
            processRequest(request, response);
        } catch (Exception ex) {
            Logger.getLogger(UpdateResult.class.getName()).log(Level.SEVERE, null, ex);
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
