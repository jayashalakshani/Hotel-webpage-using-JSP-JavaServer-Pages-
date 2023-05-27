<%-- 
    Document   : Rooms
    Created on : May 27, 2023, 2:55:37 PM
    Author     : hansa
--%>

    

<%@page contentType="text/html" pageEncoding="UTF-8"%>

<%@page import="java.sql.*" %>
<%
 
    if(request.getParameter("Add new room")!=null)
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
        pst = con.prepareStatement("insert into rooms(R_number,type,phone_number,Reserved)values(?,?,?,?)");
        pst.setString(1, R_number);
        pst.setString(2, type);
        pst.setString(3, m_num);
        pst.setString(4, reserved);
        pst.executeUpdate();  
        
        %>
    <script>  
        alert("Room Adddeddddd");    
    </script>
    <%            
    }
   %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Manage Rooms</title>
        <link href="bootstrap/css/bootstrap.css" rel="stylesheet" type="text/css"/>
        <link href="bootstrap/css/bootstrap.min.css" rel="stylesheet" type="text/css"/>
    </head>
    <body>
        <h1>Manage Rooms</h1>
        </br>
        <div class="row">
            <div class="col-sm-4">
             <   <form  method="POST" action="Rooms.jsp" >
                    
                    <div alight="left">
                        <label class="form-label">Room Number</label>
                        <input type="text" class="form-control" placeholder="0 out of 50" name="RoomNo" id="RoomNo" required >
                     </div>
                        
                    <div alight="left">
                        <label class="form-label">Type</label>
                        <select name="TypeID">
                                <option align="center">Select Type ID</option>
                                <option align="center">1</option>
                                <option align="center">2</option>
                                <option align="center">3</option>
                                <option align="center">4</option>
                                <option align="center">5</option>
                            </select>
                            &nbsp;<a href="Roomstype.jsp">Show Type</a>
                     </div>
                        
                     <div alight="left">
                        <label class="form-label">Phone Number</label>
                        <input type="text" class="form-control" placeholder="Phone Number" name="mobNo" id="mobNo" >
                     </div>
                    
                    <div alight="left">
                        <label class="form-label">Reserved</label>
                        <br>
                        <input type="radio"  name="Reserved" value="Yes" />Yes &nbsp;
                        &nbsp;<input type="radio"  name="Reserved" value="No" />No
                     </div>
                         </br>
                        
                     <div alight="right">
                         <input type="submit" id="submit" value="Add new room" name="Add new room" class="btn btn-info">
                         <input type="reset" id="reset" value="Clear All Fields" name="Clear All Fields" class="btn btn-warning">
                     </div>  
                        
                </form>
                
            </div>
                             
             <div class="col-sm-8">
                 <div class="panel-body">
                     <table id="tbl-student" class="table table-responsive table-bordered" cellpadding ="0" width="100%">
                         <thead>
                             <tr>
                                    <th>Room Number</th>
                                    <th>Type</th>
                                    <th>Phone Number</th>
                                    <th>Reserved</th>
                                    <th>Edit</th>
                                    <th>Delete</th>
                             </tr>  
                             <%  
 
                                Connection con;
                                PreparedStatement pst;
                                ResultSet rs;
        
                                Class.forName("com.mysql.cj.jdbc.Driver");
                                con = DriverManager.getConnection("jdbc:mysql://localhost:3306/DBmarriott","root","");
                                
                                  String query = "select * from rooms";
                                  Statement st = con.createStatement();
                                  
                                    rs =  st.executeQuery(query);
                                    
                                        while(rs.next())
                                        {
                                            String id = rs.getString("R_number");
                                   %>
                             
            
                             <tr>
                                 <td><%=rs.getString("R_number") %></td>
                                 <td><%=rs.getString("type") %></td>
                                 <td><%=rs.getString("phone_number") %></td>
                                 <td><%=rs.getString("Reserved") %></td>
                                 <td><a href="Roomsupdate.jsp?id=<%=id%>">Edit</a></td>
                                 <td><a href="Roomsdelete.jsp<%=id%>>">Remove</a></td>
                             </tr>
                            
                               <%
                                
                                 }
                               %>
                                
                            
                     </table>    
                 </div>
 
            </div>  
        </div>
   
        
    </body>
</html>
