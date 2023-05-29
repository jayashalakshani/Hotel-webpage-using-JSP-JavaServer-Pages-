<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Login page</title>
</head>
<body>
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
</body>
</html>