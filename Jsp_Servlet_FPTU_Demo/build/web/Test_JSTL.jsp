<%-- 
    Document   : Test_JSTL
    Created on : Mar 10, 2023, 1:44:33 AM
    Author     : DELL VOSTRO 5510
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
    <title>Test JSTL</title>
</head>
<body>
    <h1>List of News</h1>
    <table>
        <thead>
            <tr>
                <th>Title</th>
                <th>Content</th>
                <th>Author</th>
            </tr>
        </thead>
        <tbody>
            <c:forEach var="news" items="${myList}">
                <tr>
                    <td>${news.getTitle}</td>
                    <td>${news.content}</td>
                    <td>${news.author}</td>
                </tr>
            </c:forEach>
        </tbody>
    </table>
</body>
</html>

