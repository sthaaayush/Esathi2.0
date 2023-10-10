
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author aayush
 */
@WebServlet(urlPatterns = {"/logProcess"})
public class logProcess extends HttpServlet {

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try ( PrintWriter out = response.getWriter()) {
            String flag = request.getParameter("flag");
            //Validation and verification for loginPage.jsp
            if ("Login".equals(flag)) {
                String uname = request.getParameter("uname");
                String upass = request.getParameter("pass");
                try {
                    Class.forName("com.mysql.jdbc.Driver");
                    Connection con = DriverManager.getConnection("jdbc:mysql://localhost/esathi", "root", "");
                    String sql = "SELECT * FROM logTab;";
                    PreparedStatement statement = con.prepareStatement(sql);
                    ResultSet rs = statement.executeQuery();
                    int logFlag = 0;
                    while (rs.next()) {
                        if (uname.equals(rs.getString("username")) && upass.equals(rs.getString("password"))) {
                            logFlag = 1;
                            break;
                        } else {
                            logFlag = 0;
                        }
                    }
                    if (logFlag == 0) {
                        request.setAttribute("errorMsg", "Incorrect Username or Password!!!");
                        RequestDispatcher rd = request.getRequestDispatcher("loginPage.jsp");
                        rd.include(request, response);
                    } else {
                        RequestDispatcher rd = request.getRequestDispatcher("homePage.html");
                        rd.include(request, response);
                    }
                    con.close();
                } catch (Exception ex) {
                    System.out.println("Exception caught: " + ex.getMessage());
                }
            } //Validation and storing values for registerationPage
            else {
                String rename = request.getParameter("rname");
                String repass = request.getParameter("rpass");
                String cfpass = request.getParameter("cpass");
                if (rename == "" || repass == "" || cfpass == "") {
                    request.setAttribute("errorMsg", "Don't leave any field empty");
                    RequestDispatcher rd = request.getRequestDispatcher("registerPage.jsp");
                    rd.forward(request, response);
                } else {
                    if (repass.equals(cfpass)) {
                        if (repass.length() >= 8) {
                            try {
                                Class.forName("com.mysql.jdbc.Driver");
                                Connection con = DriverManager.getConnection("jdbc:mysql://localhost/esathi", "root", "");
                                String sql1 = "INSERT INTO logTab VALUES('" + rename + "','" + repass + "');";
                                PreparedStatement statement = con.prepareStatement(sql1);
                                int count = statement.executeUpdate();
                                request.setAttribute("errorMsg", "Registered successfully");
                                RequestDispatcher rd = request.getRequestDispatcher("loginPage.jsp");
                                rd.forward(request, response);
                                con.close();
                            } catch (Exception ex) {
                                out.write("Exception caught" + ex.getMessage());
                                out.write("<a href='loginPage.html'>Home🏠</a>");
                            }
                        } else {
                            request.setAttribute("errorMsg", "Password must be in 8 or more character");
                            RequestDispatcher rd = request.getRequestDispatcher("registerPage.jsp");
                            rd.forward(request, response);
                        }
                    } else {
                        request.setAttribute("errorMsg", "Password Mismatch");
                        RequestDispatcher rd = request.getRequestDispatcher("registerPage.jsp");
                        rd.forward(request, response);
                    }
                }
            }
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
