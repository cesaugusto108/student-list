<%@ page language="java" contentType="text/html" pageEncoding="UTF-8" %>
<nav class="navbar bg-white pb-lg-2 pb-3">
    <div class="container-fluid">
        <a href="" class="navbar-brand fs-1 mb-1">randomUni</a>
        <h1 class="navbar_home-title fs-4 ms-auto me-4 mb-1"><a href="Students">Students list</a></h1>
        <form action="search" class="d-flex ms-lg-4 ms-0 navbar-form" id="search-form">
            <input class="form-control me-2" type="text" placeholder="Search by name" name="search" id="search-input" />
            <a href="javascript:submit()">
                <input type="button" value="Search" class="btn btn-outline-primary" id="search-btn">
            </a>
        </form>
    </div>
</nav>
<script src="./scripts/header.js"></script>