

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*" %>
<%@page import="connection.DbConnection" %>
<%@page import="connection.Queries" %>
<%
    String student_name=request.getParameter("student_name");
     String reg_no=request.getParameter("reg_no"); 
     String present_address=request.getParameter("present_address");
     String phone_no=request.getParameter("phone_no"); 
     String email=request.getParameter("email");
     String dob=request.getParameter("dob");
     String father_name=request.getParameter("father_name");
     String father_mobile=request.getParameter("father_mobile");
     String mother_name=request.getParameter("mother_name");
     String mother_mobile=request.getParameter("mother_mobile");
     String gardian_status=request.getParameter("gardian_status");
     
      String present_profession=request.getParameter("present_profession");
       String siblings=request.getParameter("siblings");
        String sibling_education=request.getParameter("sibling_education");
        
          String sibling_occupation=request.getParameter("sibling_occupation");
       String sibling_number=request.getParameter("sibling_number");
        String financial_status=request.getParameter("financial_status");
        String ssc_marks=request.getParameter("ssc_marks");
        String inter_marks=request.getParameter("inter_marks");
     String cet_rank=request.getParameter("cet_rank");
     String stay=request.getParameter("stay");
     
          session.setAttribute("reg_no",reg_no);
        try{
    int count=0;
    
  String query="select count(*) from c_form where reg_no='"+reg_no+"' or email='"+email+"'";
       ResultSet r=Queries.getExecuteQuery(query);
       while(r.next()){
     count=r.getInt(1);   
       }
       if(count==0){
         int i=Queries.getExecuteUpdate("insert into c_form values"
                 + "(null,'"+student_name+"','"+reg_no+"','"+present_address+"','"+phone_no+"',"
                 + "'"+email+"','"+dob+"','"+father_name+"','"+father_mobile+"','"+mother_name+"','"+mother_mobile+"',"
                 + "'"+gardian_status+"','"+present_profession+"','"+siblings+"','"+sibling_education+"','"+sibling_occupation+"',"
                 + "'"+sibling_number+"','"+financial_status+"','"+ssc_marks+"','"+inter_marks+"','"+cet_rank+"','"+stay+"','waiting')");
         if(i>0){
           
            %>
       <script type="text/javascript">
           window.alert("Student Register SuccessFully..!!");
           window.location="Add_fees.jsp";
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
           window.alert("Registation number or Email Already Exist..!!");
           window.location="StudentReg.jsp";
           </script>
          <%
}
    
}catch(Exception e){
    out.println(e);
}

      
     
     
     
     
     
     
     
     
    %>
