<%@ page import="com.sda.JavaGda34.wevAppGrades.Grade" %>
<%@ page import="java.util.List" %>
<%@ page import="java.util.ArrayList" %><%--
  Created by IntelliJ IDEA.
  User: Pichael
  Date: 7/18/2020
  Time: 5:03 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Grade delete handler</title>
</head>
<body>
<%
    String gradeId = request.getParameter("gradeId");
    Object gradeListResult = session.getAttribute("gradeList");
    List<Grade> gradeList;
    if (gradeListResult instanceof List) {
        gradeList = (List<Grade>) gradeListResult;
    } else {
        gradeList = new ArrayList<>();
    }

    System.out.println(gradeList.get(0).getId());
    for (int i = 0; i < gradeList.size(); i++) {
        if (gradeList.get(i).getId().equals(Long.parseLong(gradeId))) {
            System.out.println(gradeList.get(i).getId());
            gradeList.remove(gradeList.get(i));
        }
    }

    session.setAttribute("gradeList", gradeList);
    response.sendRedirect("/gradeList.jsp");
%>
</body>
</html>
