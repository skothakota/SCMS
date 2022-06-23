
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%
String uname=request.getParameter("username");
String pwd=request.getParameter("password");

try{
    
    if(uname.equalsIgnoreCase("Admin")&&pwd.equalsIgnoreCase("Admin")){
        %>
        <script type="text/javascript">
            window.alert("Admin Login Success");
            window.location="AdminHome.jsp";
            </script>
        <%
    }else{
%>
        <script type="text/javascript">
            window.alert("Admin Login Failed");
            window.location="Admin.jsp";
            </script>
        <%
}
    
    
}catch(Exception e){
   out.println(e); 
}


%>