

<%@page import="java.sql.ResultSet"%>
<%@page import="connection.Queries"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%
String year=request.getParameter("year");
String outstanding=request.getParameter("outstanding");
String instalment_1=request.getParameter("instalment_1");
String instalment_2=request.getParameter("instalment_2");
String instalment_3=request.getParameter("instalment_3");

try{
    String reg_no=(String)session.getAttribute("reg_no");
   String query="select count(*) from add_fee where year='"+year+"'"; 
  int c=0;
ResultSet r=Queries.getExecuteQuery(query);
while(r.next()){
   c=r.getInt(1); 
}
if(c==0){
 int i=Queries.getExecuteUpdate("insert into add_fee values(null,'"+reg_no+"','"+year+"','"+outstanding+"','"+instalment_1+"','"+instalment_2+"','"+instalment_3+"')");
 if(i>0){
  %>
  <script type="text/javascript">
      window.alert("Data Submiteed Successfully..!!");
      window.location="Add_fees2.jsp";
  </script>
  <%
 }else{
%>
  <script type="text/javascript">
      window.alert("Data Submition Failed..!!");
      window.location="Add_fees1.jsp";
  </script>
  <%
}
}else{
%>
  <script type="text/javascript">
      window.alert("Data Already Submitted..!!");
      window.location="Add_fees1.jsp";
  </script>
  <%
}
    
    
}catch(Exception e){
   out.println(e); 
}



%>