<%-- 
    Document   : Roomstype
    Created on : May 27, 2023, 7:59:45 AM
    Author     : hansa
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Rooms Type</title>
        <link rel="stylesheet" href="style.css">
        <link rel="stylesheet" href="roomstyles.css">
        
    </head>
    <body>
       <div class="box">            
           <form action="Rooms.jsp">
               <h2>Types of Rooms</h2>
               <div class="inputBox" > 
               <table id="type" border="2" cellpadding="2">
                   <thead>
                       <tr>
                           <th>Type ID</th>
                           <th>Description</th>
                           <th>Price</th>
                       </tr>
                   </thead>
                   <tbody>
                       <tr>
                           <td>1</td>
                           <td>Single</td>
                           <td>100</td>
                       </tr>
                       <tr>
                           <td>2</td>
                           <td>Double</td>
                           <td>200</td>
                       </tr>
                       <tr>
                           <td>3</td>
                           <td>Triple</td>
                           <td>300</td>
                       </tr>
                       <tr>
                           <td>4</td>
                           <td>Family</td>
                           <td>400</td>
                       </tr>
                       <tr>
                           <td>5</td>
                           <td>Suite</td>
                           <td>500</td>
                       </tr>
                   </tbody>
                   </div>
                   
                     <input type="submit" value="OK" />
                   
                    
                
           </form>
                    
                    
        </div>  
    </body>
</html>
