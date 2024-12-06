@WebServlet("/viewpage")
public class ViewPageServlet extends HttpServlet {
    private static final String JDBC_URL = "jdbc:mysql://localhost:3306/esathi";
    private static final String JDBC_USER = "root";
    private static final String JDBC_PASSWORD = "";

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        List<String> messages = new ArrayList<>();
        List<String> responses = new ArrayList<>();

        try (Connection conn = DriverManager.getConnection(JDBC_URL, JDBC_USER, JDBC_PASSWORD)) {
            String sqlMessages = "SELECT message FROM messages ORDER BY created_at DESC";
            try (Statement stmt = conn.createStatement(); ResultSet rs = stmt.executeQuery(sqlMessages)) {
                while (rs.next()) {
                    messages.add(rs.getString("message"));
                }
            }

            String sqlResponses = "SELECT response FROM responses ORDER BY created_at DESC";
            try (Statement stmt = conn.createStatement(); ResultSet rs = stmt.executeQuery(sqlResponses)) {
                while (rs.next()) {
                    responses.add(rs.getString("response"));
                }
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }

        request.setAttribute("messages", messages);
        request.setAttribute("responses", responses);
        request.getRequestDispatcher("/viewpage.jsp").forward(request, response);
    }
}
