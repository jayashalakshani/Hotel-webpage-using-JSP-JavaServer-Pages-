<%-- 
    Document   : home
    Created on : May 26, 2023, 12:09:50 AM
    Author     : MyPc
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="home.css">
        <link rel="icon" href="logo.png">        
        <title>Home</title>
    </head>
    <body>
    <div id="header">   
    <div class="container">
       <nav>
        <img src="logo.png" class="logo" alt="Logo">
        <ul id="sidemenu">
            <li><a href="#">Home</a></li>
            <li><a href="#">Manage Rooms</a></li>
            <li><a href="#">Manage Client</a></li>
            <li><a href="#">Reservation</a></li>
            <li><a href="#">About Us</a></li>           
       </nav>        
    </div>
    <div class="textBox">            
            <h2>Hi <%=session.getAttribute("name")%>,<br>Welcome to <span>MARRIOTT.</span></h2> 
            <p>Marriott Hotels & Resorts is Marriott International's brand 
                of full-service hotels and resorts based in Bethesda, Maryland. 
                As of June 30, 2020, there were 582 hotels and resorts with 205,053 
                rooms operating under the brand, in addition to 160 hotels with 47,765 
                rooms planned for development.</p>
    </div>        
    </div>      
    </body>
</html>
