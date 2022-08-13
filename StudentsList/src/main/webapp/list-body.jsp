<%@ page language="java" contentType="text/html" pageEncoding="UTF-8" %>
<%@ page import="ces.augusto108.model.entities.Student" %>
<%@ page import="java.util.List" %>
<% 
    List<Student> list = (List<Student>) request.getAttribute("students");
%>
<% for (int i=0; i < list.size(); i++) { %>
    <div class="row align-items-center bg-white pt-2 pb-2 mt-4 mt-xl-2 ms-2 me-2 ms-lg-0 me-lg-0">
        <div class="col-8 col-xl-10">
            <div class="row align-items-center text-start">
                <div class="d-flex flex-column col-xl-3 mt-1 mt-xl-0 text-xl-start">
                    <div class="list-label text-lg-start text-secondary text-opacity-50">
                        Name
                    </div>
                    <div class="student-name">
                        <%= list.get(i).getName() %>
                    </div>
                </div>
                <div class="d-flex flex-column col-xl-3 mt-1 mt-xl-0">
                    <div class="list-label text-lg-start text-secondary text-opacity-50">
                        Email
                    </div>
                    <div class="student-email">
                        <%= list.get(i).getEmail() %>
                    </div>
                </div>
                <div class="d-flex flex-column col-xl-2 mt-1 mt-xl-0">
                    <div class="list-label text-lg-start text-secondary text-opacity-50">
                        Telephone
                    </div>
                    <div class="">
                        <%= list.get(i).getTelephone() %>
                    </div>
                </div>
                <div class="d-flex flex-column col-xl-2 mt-1 mt-xl-0">
                    <div class="list-label text-lg-start text-secondary text-opacity-50">
                        Id
                    </div>
                    <div class="">
                        <%= list.get(i).getStudentId() %>
                    </div>
                </div>
                <div class="d-flex flex-column col-xl-2 mt-1 mt-xl-0">
                    <div class="list-label text-lg-start text-secondary text-opacity-50">
                        Student Registration
                    </div>
                    <div class="">
                        <%= list.get(i).getRegistration() %>
                    </div>
                </div>
            </div>
        </div>
        <div class="col-4 col-xl-2 text-sm-end text-center">
            <a href="select?id=<%= list.get(i).getId() %>" class="btn btn-outline-secondary me-xxl-3 me-sm-2 edit-btn">
                Edit
            </a>
            <a href="confirm?id=<%= list.get(i).getId() %>" class="btn btn-danger">
                Delete
            </a>
        </div>
    </div>
<% } %>