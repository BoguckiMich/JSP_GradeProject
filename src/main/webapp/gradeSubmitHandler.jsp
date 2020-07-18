<%@ page import="java.util.List" %>
<%@ page import="com.sda.JavaGda34.wevAppGrades.Grade" %>
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
    <title>Grades submit handler</title>
</head>
<body>
<%
//    Long id;
//    if(id == null){
//        id += 1;
//    } else {
//        id =(long) 1;
//    }

    String value = request.getParameter("value");
    String subject = request.getParameter("gradeSubject");
    String corrected = request.getParameter("corrected");

    Grade grade = Grade.builder()
            .id(id)

    Object gradeListResult =  session.getAttribute("gradeList");
    List<Grade> gradeList;
    if (gradeListResult instanceof List) {
        gradeList = (List<Grade>) gradeListResult;
    } else {
        gradeList = new ArrayList<>();
    }
    gradeList.add(grade);
    session.setAttribute("gradeList", gradeList);
    response.sendRedirect("/gradeList.jsp");

%>
</body>
</html>
