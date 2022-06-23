

<%@page import="java.sql.ResultSet"%>
<%@page import="connection.Queries"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%
String regno=request.getParameter("regno");
String report=request.getParameter("report");
try{
 int c=0;
 
 ResultSet r=Queries.getExecuteQuery("select count(*) from report where regno='"+regno+"'");
  while(r.next()){
   c=r.getInt(1);   
  }  
    if(c==0){
      int i=Queries.getExecuteUpdate("insert into report values(null,'"+regno+"','"+report+"')");
      if(i>0){
        %>
        <script type="text/javascript">
            window.alert("Report Generated Successfully");
            window.location="ViewStudent1.jsp";
        </script>
        <%
      }else{
 %>
        <script type="text/javascript">
            window.alert("Report Generate Failed");
            window.location="ViewStudent1.jsp";
        </script>
        <%
}
    }else{
    %>
        <script type="text/javascript">
            window.alert("For This Student Report Already Generated");
            window.location="ViewStudent1.jsp";
        </script>
        <% 
}
    
    
}catch(Exception e){
 out.println(e);   
}

%>