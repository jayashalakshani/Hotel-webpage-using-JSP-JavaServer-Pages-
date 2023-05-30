<%@ page import="java.sql.*" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
         <link rel="stylesheet" href="css/style.css">
        <link rel="icon" href="img/logo.png">
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
            
            <table>
            <tr><td>
            <div class="inputBox">
                <input type="text" name="id" value="" required="required"/>
                <span>Employee ID</span>
                <i></i>
            </div>
            </td> 
            <td>
            <div class="inputBox">
                <input type="text" name="fname" value="" required="required"/>
                <span>First Name</span>
                <i></i>
            </div>
            </td>
            </tr>
            <tr>
            <td>    
            <div class="inputBox">
                <input type="text" name="lname" value="" required="required"/>
                <span>Last Name</span>
                <i></i>
            </div>
            </td>  
            <td>
            <div class="inputBox">
                <input type="text" name="uname" value="" required="required"/>
                <span>Username</span>
                <i></i>
            </div>
            </td>
            </tr>
            <tr>
            <td>
            <div class="inputBox">
                <input type="password" name="password" value="" required="required"/>
                <span>Password</span>
                <i></i>
            </div>
            </td>
            <td>
            <div class="inputBox">
                <input type="text" name="position" value="" required="required"/>
                <span>Position</span>
                <i></i>
            </div>
            </td> 
            </tr>
            <tr>
            <td>    
            <div class="inputBox">
                <input type="email" name="email" value="" required="required"/>
                <span>Email</span>
                <i></i>
            </div>
            </td>
            <td>
            <input type="submit" value="Sign Up" name="signup"/>  
            </td>
            </tr>
            </table>
           
        </form>
        </div>
    </body>
</html>
