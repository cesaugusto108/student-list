<%@ page language="java" contentType="text/html" pageEncoding="UTF-8" %>
<div class="row justify-content-center add-page">
    <div class="col-11">
        <form action="add" class="mt-2" id="add-form">
            <div class="form-floating mb-3">
                <input type="text" class="form-control" id="floatingName" placeholder="Name" name="name" />
                <label for="floatingName" id="floatingNameLabel">Name</label>
            </div>
            <div class="form-floating mb-3">
                <input type="email" class="form-control" id="floatingEmail" placeholder="Email address" name="email" />
                <label for="floatingEmail" id="floatingEmailLabel">Email address</label>
            </div>
            <div class="form-floating mb-3">
                <input type="tel" class="form-control" id="floatingPhone" placeholder="Telephone" name="telephone" />
                <label for="floatingPhone" id="floatingPhoneLabel">Telephone</label>
            </div>
            <div class="form-floating mb-3">
                <input type="tel" class="form-control" id="floatingId" placeholder="Id" name="studentId" />
                <label for="floatingId" id="floatingIdLabel">Id</label>
            </div>
            <div class="form-floating mb-3">
                <input type="tel" class="form-control" id="floatingRegistration" placeholder="Registration"
                    name="registration" />
                <label for="floatingRegistration" id="floatingRegistrationLabel">Registration</label>
            </div>
            <div>
                <a href="javascript:validate()">
                    <input type="button" value="Add" class="btn btn-success mb-3" id="add-btn">
                </a>
            </div>
        </form>
    </div>
</div>