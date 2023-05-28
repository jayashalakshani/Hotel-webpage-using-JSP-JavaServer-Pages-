<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*" %>
 
<%
    
        String R_number = request.getParameter("id");
        
        Connection con;
        PreparedStatement pst;
        ResultSet rs;
        
        Class.forName("com.mysql.cj.jdbc.Driver");
        con = DriverManager.getConnection("jdbc:mysql://localhost:3306/DBmarriott","root","");
        pst = con.prepareStatement("delete from rooms where R_number = ?");
        pst.setString(1, R_number);
        pst.executeUpdate(); 
        
        %>
        
        <script>  
            alert("Room Record Deleted");          
       </script>
    
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Delete Record</title>
    </head>
    <body>
        <p><a href="Rooms.jsp">Refresh</a></p>
    </body>
</html>
