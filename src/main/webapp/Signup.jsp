<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%
      String name = request.getParameter("name");
      String pass = request.getParameter("pass");
      String url = "jdbc:mysql://localhost:3306/loyola";
      String username = "root";
      String password = "tiger";
      int result = 0;

      try {
          Class.forName("com.mysql.cj.jdbc.Driver");
          Connection con = DriverManager.getConnection(url, username, password);
          out.println("<h1>Connection created</h1>");

          String sql = "insert into student (username, password) values (?, ?)";
          PreparedStatement ps = con.prepareStatement(sql);
          ps.setString(1, name);
          ps.setString(2, pass);

          result = ps.executeUpdate();

          ps.close();
          con.close();
      } catch (Exception e) {
          out.println("<h1>Exception occurred: " + e + "</h1>");
      }
   %>

	<%
      if (result > 0) {
   %>
	<h1>New account is created</h1>
	Username: <%=name %>
	Password: <%=pass %>
	<%
      } else {
   %>
	<h1>Account is not created</h1>
	<%
      }
   %>
</body>
</html>