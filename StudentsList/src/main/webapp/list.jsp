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
                        <div class="row align-items-center text-light add-list_header list-header">
                            <div class="col-12">
                                <div class="text-center students-list_header p-2">
                                    Add a new student to the list
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="row justify-content-center">
                    <div class="col-11">
                        <form action="add" class="mt-2">
                            <div class="form-floating mb-3">
                                <input type="text" class="form-control" id="floatingName" placeholder="First Last name" name="name" />
                                <label for="floatingName">Name</label>
                            </div>
                            <div class="form-floating mb-3">
                                <input type="email" class="form-control" id="floatingEmail" placeholder="name@example.com" name="email" />
                                <label for="floatingEmail">Email address</label>
                            </div>
                            <div class="form-floating mb-3">
                                <input type="tel" class="form-control" id="floatingPhone" placeholder="1200912123434" name="telephone" />
                                <label for="floatingPhone">Telephone</label>
                            </div>
                            <div class="form-floating mb-3">
                                <input type="tel" class="form-control" id="floatingId" placeholder="12345678900" name="studentId" />
                                <label for="floatingId">Id</label>
                            </div>
                            <div class="form-floating mb-3">
                                <input type="tel" class="form-control" id="floatingRegistration" placeholder="200000010111" name="registration" />
                                <label for="floatingRegistration">Registration</label>
                            </div>
                            <div>
                                <button class="btn btn-success mb-3" type="submit">Add</button>
                            </div>
                        </form>
                    </div>
                </div>
            </div>
        </div>
        <!-- list -->
        <div class="col-lg-8 mt-lg-0 mt-sm-4 list-body">
            <div class="d-flex flex-column">
                <div class="row list_header_strip">
                    <div class="col-12">
                        <div class="row align-items-center text-light bg-secondary list-header">
                            <div class="col-10">
                                <div class="row align-items-center text-center students-list_header p-2">
                                    <div class="col-4">Student's name</div>
                                    <div class="col-2">Email</div>
                                    <div class="col-2">Telephone</div>
                                    <div class="col-2">Id</div>
                                    <div class="col-2">Student registration</div>
                                </div>
                            </div>
                            <div class="col-2"></div>
                        </div>
                    </div>
                </div>
                <% for (int i = 0; i < list.size(); i++) { %>
                <div class="row align-items-center bg-white pt-2 pb-2 mt-4 mt-xl-2">
                    <div class="col-8 col-xl-10">
                        <div class="row align-items-center text-start">
                            <div class="d-flex flex-column col-xl-3 mt-1 mt-xl-0 text-xl-start">
                                <div class="list-label text-lg-start text-secondary text-opacity-50">
                                    Name
                                </div>
                                <div class=""><%= list.get(i).getName() %></div>
                            </div>
                            <div class="d-flex flex-column col-xl-3 mt-1 mt-xl-0">
                                <div class="list-label text-lg-start text-secondary text-opacity-50">
                                    Email
                                </div>
                                <div class=""><%= list.get(i).getEmail() %></div>
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
                        <button class="btn btn-outline-secondary me-xxl-3 me-sm-2 edit-btn" type="submit">Edit</button>
                        <a href="confirm?id=<%= list.get(i).getId() %>">
                            <button class="btn btn-danger" type="button">Delete</button>
                        </a>
                    </div>
                </div>
                <% } %>
                <div class="student-list_bottom"></div>
            </div>
        </div>
    </div>
</div>

