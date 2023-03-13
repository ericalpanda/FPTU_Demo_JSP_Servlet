<%@page contentType="text/html" import="Model.*,java.util.*" pageEncoding="utf-8" %>
<% response.setCharacterEncoding("UTF-8"); %>
<%@ include file="/includes/header.jsp" %>
<jsp:useBean id="list" class="java.util.ArrayList" scope="session"/>
<!-- start the middle column -->

            
                <section>
                    <h1>Student List</h1>
                <Table border="1">
                    <TR><TH>ID</th><TH>Name</th><TH>Gender</th><TH>DOB</th><TH>Update</th><TH>Delete</th></TR>

                    <%
                    for(Object o:list){
                        Model.Student s=(Model.Student)o;
                        out.write("<TR><TD>"+s.getId()+"</TD><TD>"+s.getName()+"</TD><TD>"+s.getGender()+"</TD><TD>"+s.getDob()+"</TD><TD><A href='update?id="+s.getId()+"'>Update</A></TD><TD><A href='delete?id="+s.getId()+"'>Delete</A></TD></TR>");
                    }
                    %>
                </table><HR>
                <A href="create">Add more..</a>
                </section>

            </div>
</div>
<!-- end the middle column -->

<%@ include file="/includes/column_left_home.jsp" %>
<%@ include file="/includes/footer.jsp" %>
