

<%@page import="connection.DbConnection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*"%>




<%try{
    String email=request.getParameter("email");
Connection con=DbConnection.getConnection();
Statement st=con.createStatement();
int i=st.executeUpdate("update student set status='Authorized' where email='"+email+"'");
if(i>0){
    %>
    <script type="text/javascript">
        window.alert("Authorized Successfully");
        window.location="ViewStudent.jsp";
        </script>
    <%
}else{
%>
    <script type="text/javascript">
        window.alert("Authorization Failed");
        window.location="ViewStudent.jsp";
        </script>
    <%
}


}catch(Exception e){
    out.println(e);
}



%>