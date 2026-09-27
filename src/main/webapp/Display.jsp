<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Display All Students</title>
</head>
<body>
   <h1>All data are displayed</h1>

   <%
     String url = "jdbc:mysql://localhost:3306/loyola";
     String username = "root";
     String password = "tiger";
     ResultSet rs = null;

     try {
         Class.forName("com.mysql.cj.jdbc.Driver");
         Connection con = DriverManager.getConnection(url, username, password);
         String sql = "select * from student";
         Statement st = con.createStatement();
         rs = st.executeQuery(sql);
     } catch (Exception e) {
         out.println(e);
     }
   %>

   <table border="2">
       <thead>
       <tr>
           <th>Username</th>
           <th>Password</th>
       </tr>
       </thead>
       <tbody>
       <%
           while (rs != null && rs.next()) {
       %>
             <tr>
                <td><%=rs.getString("username") %></td>
                <td><%=rs.getString("password") %></td>
             </tr>
       <%
           }
       %>
       </tbody>
   </table>

</body>
</html>