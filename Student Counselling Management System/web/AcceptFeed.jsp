

<%@page import="connection.Queries"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%

 
String response1=request.getParameter("response");
String id=request.getParameter("id");

try{
    
    int i=Queries.getExecuteUpdate("update feedback set response='"+response1+"',status='Accepted' where id='"+id+"'");
    if(i>0){
         %>
       <script type="text/javascript">
           window.alert("Feedback Accepted SuccessFully..!!");
           window.location="CouselorData.jsp";
           </script>
          <%
    }else{
%>
       <script type="text/javascript">
           window.alert("Accept Submition Failed..!!");
           window.location="CouselorData.jsp";
           </script>
          <%
}
   
    
}catch(Exception e){
 out.println(e);   
}
%>
