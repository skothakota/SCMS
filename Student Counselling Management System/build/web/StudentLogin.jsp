 

<%@page import="java.sql.ResultSet"%>
<%@page import="connection.DbConnection"%>
<%@page import="connection.Queries"%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%
String uname=request.getParameter("uname");
String pass=request.getParameter("pass");
try{
    
    String query="select * from student where username='"+uname+"' and password='"+pass+"'";
    ResultSet r=Queries.getExecuteQuery(query);
    if(r.next()){
    String status=r.getString("status");
    if(status.equals("waiting")){
        %>
       <script type="text/javascript">
           window.alert("You Are Not Authorized By The Admin..!!");
           window.location="Student.jsp";
           </script>
          <%
    }else{
session.setAttribute("uname",uname);
session.setAttribute("rollno",r.getString("rollno"));


       %>
       <script type="text/javascript">
           window.alert("Login SuccessFully..!!");
           window.location="StudentHome.jsp";
           </script>
          <%
    }
}else{
 %>
       <script type="text/javascript">
           window.alert("Login Failed..!!");
           window.location="Student.jsp";
           </script>
          <%
}
    
    
}catch(Exception e){
  out.println(e);  
}




%>