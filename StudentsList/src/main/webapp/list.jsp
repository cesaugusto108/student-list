<%@ page language="java" contentType="text/html" pageEncoding="UTF-8" %>
<%@ page import="ces.augusto108.model.entities.Student" %>
<%@ page import="java.util.List" %>
<%
    List<Student> list = (List<Student>) request.getAttribute("students");
%>
<div class="container-fluid mt-2">
	<div class="row">
		<div class="col-lg-4"></div>
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
				<div class="col-2">
					<button class="btn btn-outline-secondary me-2" type="submit">Edit</button>
					<button class="btn btn-danger" type="submit">Delete</button>
				</div>
			</div>
            <% } %>
		</div>
	</div>
</div>
