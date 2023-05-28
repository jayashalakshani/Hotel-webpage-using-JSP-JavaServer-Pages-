<%-- 
    Document   : Roomsupdate
    Created on : May 27, 2023, 6:14:12 PM
    Author     : hansa
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*" %>
 
<%
    if(request.getParameter("Update")!=null)
    {
        String R_number= request.getParameter("RoomNo");
        String type= request.getParameter("TypeID");
        String m_num= request.getParameter("mobNo");
        String reserved= request.getParameter("Reserved");
        
        Connection con;
        PreparedStatement pst;
        ResultSet rs;
        
        Class.forName("com.mysql.cj.jdbc.Driver");
        con = DriverManager.getConnection("jdbc:mysql://localhost:3306/DBmarriott","root","");
        pst = con.prepareStatement("update rooms set type =?,phone_number =?,Reserved=? where R_number = ?");
        pst.setString(1, type);
        pst.setString(2, m_num);
        pst.setString(3, reserved);
        pst.setString(4, R_number);
        pst.executeUpdate();  
        
        %>
        
        <script>  
            alert("Room Details Updateddddd");          
       </script>
    <%            
    }
 
%>
 
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Update Rooms</title>
        <link href="bootstrap/css/bootstrap.css" rel="stylesheet" type="text/css"/>
        <link href="bootstrap/css/bootstrap.min.css" rel="stylesheet" type="text/css"/>
    </head>
    <body>
        
        <div class="row">
            <div class="col-sm-4">
               <form  method="POST" action="Roomsupdate.jsp" >
                    
                  <%    
                         Connection con;
                        PreparedStatement pst;
                        ResultSet rs;
        
                         Class.forName("com.mysql.cj.jdbc.Driver");
                          con = DriverManager.getConnection("jdbc:mysql://localhost:3306/DBmarriott","root","");
                          
                          String R_number = request.getParameter("id");
                          
                        pst = con.prepareStatement("select * from rooms where R_number = ?");
                        pst.setString(1, R_number);
                        rs = pst.executeQuery();
                        
                         while(rs.next())
                         {
                    
                    %>
                 
                    <div alight="left">
                        <label class="form-label">Room Number</label>
                        <input type="text" class="form-control" placeholder="0 out of 50" value="<%= rs.getString("R_number")%>" name="RoomNo" id="RoomNo" required >
                     </div>
                     <br>  
                    <div alight="left">
                        <label class="form-label">Type</label>
                        <input type="text" class="form-control" name="TypeID" value="<%= rs.getString("type")%>" />
                                
                            &nbsp;<a href="Roomstype.jsp">Show Type</a>
                     </div>
                      <br>   
                     <div alight="left">
                        <label class="form-label">Phone Number</label>
                        <input type="text" class="form-control" value="<%= rs.getString("phone_number")%>" placeholder="Phone Number" name="mobNo" id="mobNo" >
                     </div>
                    <br> 
                    <div alight="left">
                        <label class="form-label">Reserved</label>
                        <br>
                        <input type="text" class="form-control" placeholder="Enter Yes or No" name="Reserved" value="<%= rs.getString("Reserved")%>" />
                        
                     </div>
                    <% }  %>
                     
                         </br>
                        
                     <div alight="right">
                         <input type="submit" id="submit" value="Update" name="Update" class="btn btn-info">
                         
                     </div>  
                      
                          <div align="right">
                            
                             <p><a href="Rooms.jsp">Back To Rooms Page</a></p>
                            
                            
                         </div>
                </form>
                
            </div>
        </div>
    </body>
</html>
