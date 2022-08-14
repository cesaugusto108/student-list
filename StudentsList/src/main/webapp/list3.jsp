<%@ page language="java" contentType="text/html" pageEncoding="UTF-8" %>
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
                <%@ include file="add-page.jsp" %>
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
                <%@ include file="list-body2.jsp" %>
                <div class="student-list_bottom"></div>
            </div>
        </div>
    </div>
</div>
<script src="./scripts/validation.js"></script>
<script src="./scripts/format-text.js"></script>


