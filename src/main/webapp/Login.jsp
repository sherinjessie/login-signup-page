<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Login</title>
</head>
<body>
    <%
        String url = "jdbc:mysql://localhost:3306/loyola";
        String username = "root";
        String password = "tiger";

        String name = request.getParameter("name");
        String pass = request.getParameter("pass");

        boolean loggedIn = false;

        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            Connection con = DriverManager.getConnection(url, username, password);

            String sql = "select * from student where username=? and password=?";
            PreparedStatement ps = con.prepareStatement(sql);
            ps.setString(1, name);
            ps.setString(2, pass);

            ResultSet rs = ps.executeQuery();

            if (rs.next()) {
                loggedIn = true;
            }

            rs.close();
            ps.close();
            con.close();

        } catch (Exception e) {
            out.println("<h1>Exception occurred: " + e + "</h1>");
        }
    %>

    <%
        if (loggedIn) {
    %>
        <h1>Logged in successfully</h1>
        <p>Welcome: <%=name %></p>
    <%
        } else {
    %>
        <h1>Username or password is wrong</h1>
    <%
        }
    %>
</body>
</html>