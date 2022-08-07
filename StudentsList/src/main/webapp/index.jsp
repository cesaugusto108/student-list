<%@ page language="java" contentType="text/html" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="en">
	<head>
		<meta charset="UTF-8" />
		<meta http-equiv="X-UA-Compatible" content="IE=edge" />
		<meta name="viewport" content="width=device-width, initial-scale=1.0" />

		<!-- Google Fonts -->
		<link rel="preconnect" href="https://fonts.googleapis.com" />
		<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin />
		<link href="https://fonts.googleapis.com/css2?family=Montserrat:wght@300&family=Raleway:wght@400&display=swap" rel="stylesheet" />

		<!-- Bootstrap Icons -->
		<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.9.1/font/bootstrap-icons.css" />

		<!-- Bootstrap -->
		<link
			href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0/dist/css/bootstrap.min.css"
			rel="stylesheet"
			integrity="sha384-gH2yIJqKdNHPEq0n4Mqa/HGKIhSkIHeL5AyhkYV8i59U5AR6csBvApHHNl/vI1Bx"
			crossorigin="anonymous"
		/>

		<!-- CSS -->
		<link rel="stylesheet" href="styles/styles.css" />

		<title>Students List - Home</title>
	</head>
	<body>
		<%@ include file="header.jsp" %>
        <%@ include file="list-header.jsp" %>
        <%@ include file="list.jsp" %>
		<footer class="p-3 bg-secondary text-light">
			<div class="text-center">
				Developed by <a href="https://github.com/cesaugusto108"><i class="bi bi-github"></i> cesaugusto108</a>
			</div>
		</footer>
	</body>
</html>
