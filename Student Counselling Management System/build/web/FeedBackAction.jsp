

<%@page import="connection.Queries"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
  String uname=(String)session.getAttribute("uname");
 String rollno=(String)session.getAttribute("rollno");
String feedback=request.getParameter("feedback");
try{
    
    int i=Queries.getExecuteUpdate("insert into feedback values(null,'"+rollno+"','"+feedback+"','waiting','waiting')");
    if(i>0){
         %>
       <script type="text/javascript">
           window.alert("Feedback Submitted SuccessFully..!!");
           window.location="Give_FeedBack.jsp";
           </script>
          <%
    }else{
%>
       <script type="text/javascript">
           window.alert("Feedback Submition Failed..!!");
           window.location="Give_FeedBack.jsp";
           </script>
          <%
}
    
    
}catch(Exception e){
 out.println(e);   
}
%>
