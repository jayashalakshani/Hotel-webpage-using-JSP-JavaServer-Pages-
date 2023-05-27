<%-- 
    Document   : loginbean
    Created on : May 26, 2023, 5:16:31 PM
    Author     : MyPc
--%>
<%@ page language="Java" import="java.sql.*" %> 
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Database Search</title>
    </head>
    <body>
        <%! 
        String userdbName;
        String userdbPsw;        
        %>
        <%
        Connection con= null;
        PreparedStatement ps = null;
        ResultSet rs = null;

        String driverName = "com.mysql.cj.jdbc.Driver";
        String url = "jdbc:mysql://localhost:3306/DBmarriott";
        String user = "root";
        String dbpsw = "";

        String sql = "select * from employee where username=? and password=? ";

        String name = request.getParameter("name");
        String password = request.getParameter("pswd");        

        if((!(name.equals(null) || name.equals("")) && !(password.equals(null) || password.equals(""))))
        {
        try{
        Class.forName(driverName);
        con = DriverManager.getConnection(url, user, dbpsw);
        ps = con.prepareStatement(sql);
        ps.setString(1, name);
        ps.setString(2, password);        
        rs = ps.executeQuery();
        if(rs.next())
        { 
        userdbName = rs.getString("username");
        userdbPsw = rs.getString("password");        
        if(name.equals(userdbName) && password.equals(userdbPsw) )
        {
        session.setAttribute("name",userdbName);         
        response.sendRedirect("home.jsp"); 
        } 
        }
        else
        response.sendRedirect("error.jsp");
        rs.close();
        ps.close(); 
        }
        catch(SQLException sqe)
        {
        out.println(sqe);
        } 
        }
        else
        {
        %>
        <center><p style="color:red">Error In Login</p></center>
        <% 
        getServletContext().getRequestDispatcher("/loginbean.jsp").include(request, response);
        }
        %> 
        
        
    </body>
</html>
