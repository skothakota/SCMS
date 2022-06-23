 

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*" %>
<%@page import="connection.DbConnection" %>
<%@page import="connection.Queries" %>
<%
    String name=request.getParameter("fname");
   
     String email=request.getParameter("email");
     String mobile=request.getParameter("mobile"); 
     String address=request.getParameter("address");
     String gender=request.getParameter("gender");

      String username=request.getParameter("username");

        String password=request.getParameter("password");
        try{
    int count=0;
    
  String query="select count(*) from counselor where username='"+username+"' or email='"+email+"'";
       ResultSet r=Queries.getExecuteQuery(query);
       while(r.next()){
     count=r.getInt(1);   
       }
       if(count==0){
         int i=Queries.getExecuteUpdate("insert into counselor values(null,'"+name+"','"+email+"','"+mobile+"','"+address+"','"+gender+"','"+username+"','"+password+"')");
         if(i>0){
            %>
       <script type="text/javascript">
           window.alert("Counselor Register SuccessFully..!!");
           window.location="Counselor.jsp";
           </script>
          <%
    }else{
 %>
       <script type="text/javascript">
           window.alert("Counselor Registration Failed..!!");
           window.location="CounselorReg.jsp";
           </script>
          <%
}
       }else{
%>
       <script type="text/javascript">
           window.alert("Username or Email Already Exist..!!");
           window.location="Counselor.jsp";
           </script>
          <%
}
    
}catch(Exception e){
    out.println(e);
}

      
     
     
     
     
     
     
     
     
    %>
