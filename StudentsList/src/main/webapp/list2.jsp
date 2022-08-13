<%@ page language="java" contentType="text/html" pageEncoding="UTF-8" %>
<%@ page import="ces.augusto108.model.entities.Student" %>
<%@ page import="java.util.List" %>
<%
    List<Student> list = (List<Student>) request.getAttribute("students");
%>
<div class="container-fluid mt-2">
    <div class="row">
        <!-- form -->
        <div class="col-lg-4 list-header-container">
            <div class="d-flex flex-column">
                <div class="row list_header_strip">
                    <div class="col-12">
                        <div class="row align-items-center text-dark edit-list_header list-header">
                            <div class="col-12">
                                <div class="text-center students-list_header p-2">
                                    Edit the information below
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <%@ include file="edit-page.jsp" %>
            </div>
        </div>
        <!-- list -->
        <div class="col-lg-8 mt-lg-0 mt-sm-4 list-body">
            <div class="d-flex flex-column">
                <div class="row list_header_strip">
                    <div class="col-12">
                        <div class="row align-items-center text-light bg-secondary list-header">
                            <%@ include file="list-header.jsp" %>
                            <div class="col-2"></div>
                        </div>
                    </div>
                </div>
                <% for (int i = 0; i < list.size(); i++) { %>
                <div class="row align-items-center bg-white pt-2 pb-2 mt-4 mt-xl-2 ms-2 me-2 ms-lg-0 me-lg-0">
                    <div class="col-8 col-xl-10">
                        <div class="row align-items-center text-start">
                            <div class="d-flex flex-column col-xl-3 mt-1 mt-xl-0 text-xl-start">
                                <div class="list-label text-lg-start text-secondary text-opacity-50">
                                    Name
                                </div>
                                <div class="student-name"><%= list.get(i).getName() %></div>
                            </div>
                            <div class="d-flex flex-column col-xl-3 mt-1 mt-xl-0">
                                <div class="list-label text-lg-start text-secondary text-opacity-50">
                                    Email
                                </div>
                                <div class="student-email"><%= list.get(i).getEmail() %></div>
                            </div>
                            <div class="d-flex flex-column col-xl-2 mt-1 mt-xl-0">
                                <div class="list-label text-lg-start text-secondary text-opacity-50">
                                    Telephone
                                </div>
                                <div class=""><%= list.get(i).getTelephone() %></div>
                            </div>
                            <div class="d-flex flex-column col-xl-2 mt-1 mt-xl-0">
                                <div class="list-label text-lg-start text-secondary text-opacity-50">
                                    Id
                                </div>
                                <div class=""><%= list.get(i).getStudentId() %></div>
                            </div>
                            <div class="d-flex flex-column col-xl-2 mt-1 mt-xl-0">
                                <div class="list-label text-lg-start text-secondary text-opacity-50">
                                    Student Registration
                                </div>
                                <div class=""><%= list.get(i).getRegistration() %></div>
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
                <div class="student-list_bottom"></div>
            </div>
        </div>
    </div>
</div>
<script src="./scripts/validation.js"></script>
<script src="./scripts/format-text.js"></script>


