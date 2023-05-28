

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*" %>
<%
 
    if(request.getParameter("Update")!=null)
    {
        String client_id= request.getParameter("ClientID");
        String fname= request.getParameter("fname");
        String lname= request.getParameter("lname");
        String phone_num= request.getParameter("mobNo");
        String email= request.getParameter("Email");
        Connection con;
        PreparedStatement pstt;
        ResultSet rs;
        
        Class.forName("com.mysql.cj.jdbc.Driver");
        con = DriverManager.getConnection("jdbc:mysql://localhost:3306/DBmarriott","root","");
        pstt = con.prepareStatement("update client set firstname =?,lastname =?,phone_number =?,email=? where client_id = ?");
        pstt.setString(1, fname);
        pstt.setString(2, lname);
        pstt.setString(3, phone_num);
        pstt.setString(4, email);
        pstt.setString(5, client_id);
        pstt.executeUpdate();   
        
        %>
    <script>  
        alert("Client Details Updated Successfully");    
    </script>
    <%            
    }
   %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Update Client Details</title>
        <link href="bootstrap/css/bootstrap.css" rel="stylesheet" type="text/css"/>
        <link href="bootstrap/css/bootstrap.min.css" rel="stylesheet" type="text/css"/>
    </head>
    <body>
       <%@include file="header.jsp" %>
        <div class="row">
            <div class="col-sm-4">
               <form  method="POST" action="Clientupdate.jsp" >
                    <%    
                         Connection con;
                        PreparedStatement pstt;
                        ResultSet rs;
        
                         Class.forName("com.mysql.cj.jdbc.Driver");
                          con = DriverManager.getConnection("jdbc:mysql://localhost:3306/DBmarriott","root","");
                          
                          String client_id = request.getParameter("id");
                          
                        pstt = con.prepareStatement("select * from client where client_id = ?");
                        pstt.setString(1, client_id);
                        rs = pstt.executeQuery();
                        
                         while(rs.next())
                         {
                    
                    %>
               
                    
                    <div alight="left">
                        <label class="form-label">Client ID number</label>
                        <input type="text" class="form-control" placeholder="NIC or Passport" value="<%= rs.getString("client_id")%>" name="ClientID" id="ClientID" required >
                     </div>
                 <br> 
                    <div alight="left">
                        <label class="form-label">First Name</label>
                        <input type="text" class="form-control" placeholder="" value="<%= rs.getString("firstname")%>" name="fname" id="fname" required >
                            
                           
                     </div>
                 <br>
                    <div alight="left">
                        <label class="form-label">Last Name</label>
                        <input type="text" class="form-control" placeholder="" value="<%= rs.getString("lastname")%>" name="lname" id="lname" required >
                    </div> 
                 <br>
                     <div alight="left">
                        <label class="form-label">Phone Number</label>
                        <input type="text" class="form-control" placeholder="Phone Number" value="<%= rs.getString("phone_number")%>" name="mobNo" id="mobNo" >
                     </div>
                 <br>
                    <div alight="left">
                        <label class="form-label">E-mail</label>
                        <input type="text" class="form-control" placeholder="abc@gmail.com" value="<%= rs.getString("email")%>" name="Email" id="Email" >
                        <br>
                        
                     </div>
                         <br>
                        
                     <div alight="right">
                         <input type="submit" id="submit" value="Update" name="Update" class="btn btn-info">
                         
                     </div>  
                     <% }  %> 
                    
                          <div align="right">
                            
                             <p><a href="Client.jsp">Back To Clients Page</a></p>
                         
                         </div>   
                </form>
                
            </div>
    </body>
</html>
