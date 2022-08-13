<%@ page language="java" contentType="text/html" pageEncoding="UTF-8" %>
<% 
    Student student=(Student) request.getAttribute("student"); 
%>
<div class="row justify-content-center">
    <div class="col-11">
        <form action="edit" class="mt-2" id="add-form">
            <div class="form-floating mb-3">
                <input type="text" class="form-control" id="floatingName" placeholder="Name" name="name" value="<%= student.getName() %>" />
                <label for="floatingName" id="floatingNameLabel">Name</label>
            </div>
            <div class="form-floating mb-3">
                <input type="email" class="form-control" id="floatingEmail" placeholder="Email address" name="email" value="<%= student.getEmail() %>" />
                <label for="floatingEmail" id="floatingEmailLabel">Email address</label>
            </div>
            <div class="form-floating mb-3">
                <input type="tel" class="form-control" id="floatingPhone" placeholder="Telephone" name="telephone" value="<%= student.getTelephone() %>"/>
                <label for="floatingPhone" id="floatingPhoneLabel">Telephone</label>
            </div>
            <div class="form-floating mb-3">
                <input type="tel" class="form-control" id="floatingId" placeholder="Id" name="studentId" value="<%= student.getStudentId() %>" />
                <label for="floatingId" id="floatingIdLabel">Id</label>
            </div>
            <div class="form-floating mb-3">
                <input type="tel" class="form-control" id="floatingRegistration" placeholder="Registration"
                    name="registration" value="<%= student.getRegistration() %>" />
                <label for="floatingRegistration" id="floatingRegistrationLabel">Registration</label>
            </div>
            <div>
                <a href="Students" class="btn btn-outline-secondary mb-3">
                    Cancel
                </a>
                <a href="javascript:validate()">
                    <input type="button" value="Confirm edit" class="btn btn-secondary mb-3" id="edit-btn">
                </a>
            </div>
        </form>
    </div>
</div>


