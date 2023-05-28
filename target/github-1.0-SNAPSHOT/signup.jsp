<%@ page import="java.sql.*" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
         <link rel="stylesheet" href="style.css">
        <link rel="icon" href="logo.png">
        <title>Sign Up</title>
    </head>
    <body> 
        <div class="box" style="width: 800px;height: 520px;">      
        <form action="" method="POST" enctype="application/x-www-form-urlencoded">
            <h2>Sign Up</h2>
            <%
                String driverName = "com.mysql.cj.jdbc.Driver";
                String url = "jdbc:mysql://localhost:3306/DBmarriott";
                String user = "root";
                String password = ""; 

                String id = request.getParameter("id");
                String firstName = request.getParameter("fname");
                String lastName = request.getParameter("lname");
                String username = request.getParameter("uname");
                String passwordInput = request.getParameter("password");
                String position = request.getParameter("position");
                String email = request.getParameter("email");

                try {
                    Class.forName(driverName);
                    Connection con = DriverManager.getConnection(url, user, password);

                    String sql = "INSERT INTO employee (id, firstname, lastname, username, password, position, email) VALUES (?, ?, ?, ?, ?, ?, ?)";
                    PreparedStatement ps = con.prepareStatement(sql);
                    ps.setString(1, id);
                    ps.setString(2, firstName);
                    ps.setString(3, lastName);
                    ps.setString(4, username);
                    ps.setString(5, passwordInput);
                    ps.setString(6, position);
                    ps.setString(7, email);

                    int rowsAffected = ps.executeUpdate();

                    if (rowsAffected > 0) {
                        // Data inserted successfully
                        response.sendRedirect("login.jsp");
                        
                    } else {
                        // Failed to insert data
                        out.println("Failed to insert data.");
                    }

                    ps.close();
                    con.close();
                }
                catch (Exception e){
                    //
                }
                
            %>
            
            //code
           
        </form>
        </div>
    </body>
</html>
