

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*" %>
<%@page import="connection.DbConnection" %>
<%@page import="connection.Queries" %>
<% String email=(String)session.getAttribute("email");
String roll_no=request.getParameter("roll_no");
    String inter_marks=request.getParameter("inter_marks");
   
     String sem_marks=request.getParameter("sem_marks");
     String attendance=request.getParameter("attendance"); 
     String other_details=request.getParameter("other_details");
   
        try{
 
         int i=Queries.getExecuteUpdate("insert into studentdetails values(null,'"+email+"','"+roll_no+"','"+inter_marks+"','"+sem_marks+"','"+attendance+"','"+other_details+"')");
         if(i>0){
            %>
       <script type="text/javascript">
           window.alert("Details Added SuccessFully..!!");
           window.location="Add_S_Professional.jsp";
           </script>
          <%
    }else{
 %>
       <script type="text/javascript">
           window.alert("Failed To Add details..!!");
           window.location="Add_S_Professional.jsp";
           </script>
          <%
}
       
}catch(Exception e){
    out.println(e);
}

      
     
     
     
     
     
     
     
     
    %>
