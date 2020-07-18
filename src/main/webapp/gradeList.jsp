<%@ page import="com.sda.JavaGda34.wevAppGrades.Grade" %>
<%@ page import="java.util.List" %>
<%@ page import="java.util.ArrayList" %><%--
  Created by IntelliJ IDEA.
  User: Pichael
  Date: 7/18/2020
  Time: 3:20 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Grade list</title>
</head>
<body>
<%
    Object gradeListResult =  session.getAttribute("gradeList");
    List<Grade> gradeList;
    if (gradeListResult instanceof List) {
        gradeList = (List<Grade>) gradeListResult;
    } else {
        gradeList = new ArrayList<>();
    }
    out.print("<table style='border: 1px solid black';>");
    out.print("<tr>" +
            "<th>Id</th>" +
            "<th>Value:</th>" +
            "<th>Subject:</th>" +
            "<th>Date added</th>" +
            "<th>corrected</th>" +
            "<th>Edit</th>" +
            "<th>Delete</th>"+
            "</tr>");
    for (int i = 0; i < gradeList.size(); i++) {
        out.print("<tr style='border: 1px solid black'>");
        out.print("<td>");
        out.println(gradeList.get(i).getId());
        out.print("</td>");
        out.print("<td>");
        out.println(gradeList.get(i).getValue());
        out.print("</td>");
        out.print("<td>");
        out.println(gradeList.get(i).getPrzedmiot());
        out.print("</td>");
        out.print("<td>");
        out.println(gradeList.get(i).getDateAdded());
        out.print("</td>");
        out.print("<td>");
        out.println(gradeList.get(i).isCorrected());
        out.print("</td>");
        out.print("</td>");
        out.print("<td>");
        out.print("<a href=\"gradeEditHandler.jsp?gradeId="+gradeList.get(i).getId()+"\">Edit</a>");
        out.print("</td>");
        out.print("</td>");
        out.print("<td>");
        out.print("<a href=\"gradeDeleteHandler.jsp?gradeId="+gradeList.get(i).getId()+"\">Delete</a>");
        out.print("</td></tr>");
    }
    out.print("</table>");

%>
<jsp:include page="navigator.jsp"/>
</body>
</html>
