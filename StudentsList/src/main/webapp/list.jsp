<%@ page language="java" contentType="text/html" pageEncoding="UTF-8" %>
<%@ page import="ces.augusto108.model.entities.Student" %>
<%@ page import="java.util.List" %>
<%
    List<Student> list = (List<Student>) request.getAttribute("students");
%>
<div class="container-fluid mt-2">
    <div class="row">
        <!-- form -->
        <div class="col-lg-4">
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
                            <button class="btn btn-success" type="submit">Add</button>
                        </div>
                    </form>
                </div>
            </div>
        </div>
        <!-- list -->
        <div class="col-lg-8">
            <% for (int i = 0; i < list.size(); i++) { %>
            <div class="row align-items-center bg-light pt-2 pb-2 mt-2">
                <div class="col-10">
                    <div class="row align-items-center text-center">
                        <div class="col-4 text-start"><%= list.get(i).getName() %></div>
                        <div class="col-2 text-start"><%= list.get(i).getEmail() %></div>
                        <div class="col-2"><%= list.get(i).getTelephone() %></div>
                        <div class="col-2"><%= list.get(i).getStudentId() %></div>
                        <div class="col-2"><%= list.get(i).getRegistration() %></div>
                    </div>
                </div>
                <div class="col-2 text-end">
                    <button class="btn btn-outline-secondary me-2" type="submit">Edit</button>
                    <a href="confirm?id=<%= list.get(i).getId() %>">
                        <button class="btn btn-danger" type="button">Delete</button>
                    </a>
                </div>
            </div>
            <% } %>
        </div>
    </div>
</div>

