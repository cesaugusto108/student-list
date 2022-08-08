<%@ page language="java" contentType="text/html" pageEncoding="UTF-8" %>
<%@ page import="ces.augusto108.model.entities.Student" %>
<%
    Student student = (Student) request.getAttribute("student");
%>
<!DOCTYPE html>
<html lang="en">
    <%@ include file="head.jsp" %>
    <body>
        <div class="delete-page">
            <p>Are you sure you want to delete this student from the list?</p>
            <a href="javascript:history.back()" class="mt-5">
                <button class="btn btn-secondary" type="button">Cancel</button>
            </a>
            <a href="delete?id=<%= student.getId() %>" class="mt-5">
                <button class="btn btn-danger" type="button">Confirm delete</button>
            </a>
        </div>        
    </body>
</html>
