<%@ page import="java.sql.*" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="style.css">
        <link rel="icon" href="logo.png">
        <title>Login</title>
    </head>
    <body>
        <%
        Connection con= null;
        PreparedStatement ps = null;
        ResultSet rs = null;

        String driverName = "com.mysql.cj.jdbc.Driver";
        String url = "jdbc:mysql://localhost:3306/DBmarriott";
        String user = "root";
        String password = ""; 
        try {
        Class.forName(driverName);
        con = DriverManager.getConnection(url, user, password);        
        %>
        <div class="box">            
        <form action="loginbean.jsp" method="POST" enctype="application/x-www-form-urlencoded">
            <h2>Login</h2>
            <div class="inputBox">
                <input type="text" name="name" value="" required="required"/>
                <span>Username</span>
                <i></i>
            </div>
            <div class="inputBox">
                <input type="password" name="pswd" value="" required="required" />
                <span>Password</span>
                <i></i>
            </div>                     
            <div class="links">
                <a href="#">Forgot Password</a>
                <a href="signup.jsp">Sign up</a>
            </div>
                
            <input type="submit" value="Login" />            
        </form>            
        </div> 
        <%    
                }
                catch(SQLException sqe)
                {
                out.println("login "+sqe);
                }
        %>
    </body>
</html>
