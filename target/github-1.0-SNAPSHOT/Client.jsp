<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*" %>
<%
 
    if(request.getParameter("Add new client")!=null)
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
        pstt = con.prepareStatement("insert into client(client_id,firstname,lastname,phone_number,email)values(?,?,?,?,?)");
        pstt.setString(1,client_id);
        pstt.setString(2,fname);
        pstt.setString(3,lname);
        pstt.setString(4,phone_num);
        pstt.setString(5,email);
        pstt.executeUpdate();  
        
        %>
    <script>  
        alert("New Client Added Successfully");    
    </script>
    <%            
    }
   %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Manage Client</title>
        <link href="bootstrap/css/bootstrap.css" rel="stylesheet" type="text/css"/>
        <link href="bootstrap/css/bootstrap.min.css" rel="stylesheet" type="text/css"/>
    </head>
    <body>
        <%@include file="header.jsp" %>
        //code
        
                
            </div>
            
            <div class="col-sm-8">
                 <div class="panel-body">
                     <table id="tbl-student" class="table table-responsive table-bordered" cellpadding ="0" width="100%">
                         <thead>
                             <tr>
                                    <th>ID Number</th>
                                    <th>First Name</th>
                                    <th>Last Name</th>
                                    <th>Phone Number</th>
                                    <th>E-mail</th>
                                    <th>Edit</th>
                                    <th>Delete</th>
                             </tr>  
                             <%  
 
                                Connection con;
                                PreparedStatement pstt;
                                ResultSet rs;
        
                                Class.forName("com.mysql.cj.jdbc.Driver");
                                con = DriverManager.getConnection("jdbc:mysql://localhost:3306/DBmarriott","root","");
                                
                                  String query = "select * from client";
                                  Statement st = con.createStatement();
                                  
                                    rs =  st.executeQuery(query);
                                    
                                        while(rs.next())
                                        {
                                            String id = rs.getString("client_id");
                                   %>
                             
            
                             <tr>
                                 <td><%=rs.getString("client_id") %></td>
                                 <td><%=rs.getString("firstname") %></td>
                                 <td><%=rs.getString("lastname") %></td>
                                 <td><%=rs.getString("phone_number") %></td>
                                 <td><%=rs.getString("email") %></td>
                                 <td><a href="Clientupdate.jsp?id=<%=id%>">Edit</a></td>
                                 <td><a href="Clientdelete.jsp?id=<%=id%>">Remove</a></td>
                             </tr>
                            
                               <%
                                
                                 }
                               %>
                                
                            
                     </table>    
                 </div>
 
            </div>  
        </div>
        </div>
        </div>
        <%@include file="footer.jsp" %> 
    </body>
</html>
