

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*" %>
<%@page import="connection.DbConnection" %>
<%@page import="connection.Queries" %>
<%
    String fname=request.getParameter("fname");
     String lname=request.getParameter("lname"); 
     String email=request.getParameter("email");
     String mobile=request.getParameter("mobile"); 
     String address=request.getParameter("address");
     String gender=request.getParameter("gender");
     String hobbies=request.getParameter("hobbies");
     String pname=request.getParameter("pname");
     String pemail=request.getParameter("pemail");
     String pmobile=request.getParameter("pmobile");
     String occupation=request.getParameter("ocupation");
      String username=request.getParameter("username");
       String rollno=request.getParameter("rollno");
        String password=request.getParameter("password");
        try{
    int count=0;
    
  String query="select count(*) from student where username='"+username+"' or rollno='"+rollno+"'";
       ResultSet r=Queries.getExecuteQuery(query);
       while(r.next()){
     count=r.getInt(1);   
       }
       if(count==0){
         int i=Queries.getExecuteUpdate("insert into student(id,fname,lname,email,mobile,address,gender,hobbies,pname,pemail,pmobile,occupation,username,rollno,password,status)  values(null,'"+fname+"','"+lname+"','"+email+"','"+mobile+"','"+address+"','"+gender+"','"+hobbies+"','"+pname+"','"+pemail+"','"+pmobile+"','"+occupation+"','"+username+"','"+rollno+"','"+password+"','waiting')");
         if(i>0){
            %>
       <script type="text/javascript">
           window.alert("Student Register SuccessFully..!!");
           window.location="Student.jsp";
           </script>
          <%
    }else{
 %>
       <script type="text/javascript">
           window.alert("Student Registration Failed..!!");
           window.location="StudentReg.jsp";
           </script>
          <%
}
       }else{
%>
       <script type="text/javascript">
           window.alert("Username or RollNo Already Exist..!!");
           window.location="StudentReg.jsp";
           </script>
          <%
}
    
}catch(Exception e){
    out.println(e);
}

      
     
     
     
     
     
     
     
     
    %>
