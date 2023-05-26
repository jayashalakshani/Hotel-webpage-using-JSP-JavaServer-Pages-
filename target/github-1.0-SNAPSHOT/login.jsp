<%-- 
    Document   : login
    Created on : May 25, 2023, 11:45:28 PM
    Author     : MyPc
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="style.css">
        <title>Login</title>
    </head>
    <body>
         <div class="box">            
        <form action="myServlet" method="POST" enctype="application/x-www-form-urlencoded">
            <h2>Sign in</h2>
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
                <a href="#">Sign up</a>
            </div>
            <input type="submit" value="Login" />            
        </form>            
        </div> 
    </body>
</html>
