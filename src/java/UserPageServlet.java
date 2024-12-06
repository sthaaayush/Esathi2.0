@WebServlet("/userpage")
public class UserPageServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    // Database connection settings
    private static final String JDBC_URL = "jdbc:mysql://localhost:3306/esathi";
    private static final String JDBC_USER = "root";
    private static final String JDBC_PASSWORD = "password";
    
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        // Display the user page
        request.getRequestDispatcher("/userpage.jsp").forward(request, response);
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String message = request.getParameter("message");
        HttpSession session = request.getSession();
        int userId = (int) session.getAttribute("userId");

        // Insert the message into the database
        if (message != null && !message.isEmpty()) {
            try (Connection conn = DriverManager.getConnection(JDBC_URL, JDBC_USER, JDBC_PASSWORD)) {
                String sql = "INSERT INTO messages (user_id, message) VALUES (?, ?)";
                try (PreparedStatement stmt = conn.prepareStatement(sql)) {
                    stmt.setInt(1, userId);
                    stmt.setString(2, message);
                    stmt.executeUpdate();
                }
            } catch (SQLException e) {
                e.printStackTrace();
            }
        }
        // Redirect back to the user page after posting
        response.sendRedirect("userpage");
    }
}
