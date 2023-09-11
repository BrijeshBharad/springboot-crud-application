<html xmlns="https://thymeleaf.org">
	<head>
		<meta http-equiv="x-ua-compatible" content="ie=edge">
		<title>Email Error</title>
		<meta name="viewport" content="width=device-width, initial-scale=1">
		<link rel="stylesheet"
		href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css">
	</head>
	<body>
		<div class="alert alert-danger" role="alert"> Email Or Contact Number is Already
			Exists.</div>
		<a th:href="@{/Registration}" class="btn btn-primary">Return</a>
	</body>
</html>