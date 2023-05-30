
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*" %>
 
<%
    
        String client_id = request.getParameter("id");
        
        Connection con;
        PreparedStatement pstt;
        ResultSet rs;
        
        Class.forName("com.mysql.cj.jdbc.Driver");
        con = DriverManager.getConnection("jdbc:mysql://localhost:3306/DBmarriott","root","");
        pstt = con.prepareStatement("delete from client where client_id = ?");
        pstt.setString(1, client_id);
        pstt.executeUpdate(); 
        
        %>
        
        <script>  
            alert("Client Record Deleted");          
       </script>
    
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="icon" href="img/logo.png">  
        <title>Delete Record</title>
    </head>
    <body>
        <%@include file="header.jsp" %>
        <div class="container-xxl py-5">
        <div class="container">
        <div class="text-center wow fadeInUp" data-wow-delay="0.1s">
            <div class="align-items-center">
                            <a href="Client.jsp" class="btn  rounded-pill py-2 px-3  ">Back<i
                                    class="fa fa-arrow-left ms-3"></i></a>
            </div>
        </div>
        </div>
        </div>
        <%@include file="footer.jsp" %>
    </body>
</html>
