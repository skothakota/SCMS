

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%
String uname=request.getParameter("username");
String pwd=request.getParameter("password");

try{
    
    if(uname.equalsIgnoreCase("Faculty")&&pwd.equalsIgnoreCase("Faculty")){
        %>
        <script type="text/javascript">
            window.alert("Faculty Login Success");
            window.location="FacultyHome.jsp";
            </script>
        <%
    }else{
%>
        <script type="text/javascript">
            window.alert("Faculty Login Failed");
            window.location="Faculty.jsp";
            </script>
        <%
}
    
    
}catch(Exception e){
   out.println(e); 
}


%>