 

<%@page import="java.sql.ResultSet"%>
<%@page import="connection.DbConnection"%>
<%@page import="connection.Queries"%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%
String uname=request.getParameter("username");
String pass=request.getParameter("password");
try{
    
    String query="select * from counselor where username='"+uname+"' and password='"+pass+"'";
    ResultSet r=Queries.getExecuteQuery(query);
    if(r.next()){
  
    
session.setAttribute("uname",uname);
session.setAttribute("email",r.getString("email"));



       %>
       <script type="text/javascript">
           window.alert("Login SuccessFully..!!");
           window.location="CounselorHome.jsp";
           </script>
          <%
    
}else{
 %>
       <script type="text/javascript">
           window.alert("Login Failed..!!");
           window.location="Counselor.jsp";
           </script>
          <%
}
    
    
}catch(Exception e){
  out.println(e);  
}




%>