<!DOCTYPE html>
<html xmlns="https://thymeleaf.org">
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
	<meta http-equiv="x-ua-compatible" content="ie=edge">
	<title>Users</title>
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css">	
	<link th:href="@{formstyle.css}" rel="stylesheet" />
</head>
<body>
	<div class="container my-2">
		<div class="card">
			<div class="card-body">
				<div th:switch="${customers}" class="container my-5">
					<p class="my-5">
						<a href="/Registration" class="btn btn-primary"><i class="fas fa-user-plus ml-2"> Add Customers</i></a>
					</p>
					<div class="col-md-10">
						<div th:case="*">
							<table class="table table-striped table-responsive-md">
								<thead>
									<tr>
										<th>Id</th>
										<th>Name</th>
										<th>Birth Date</th>
										<th>Contact No</th>
										<th>Address</th>
										<th> Address2</th>
										<th>Age</th>
										<th>Gender</th>
										<th>Email</th>
									</tr>
								</thead>
								<tbody>
									<tr th:each="c : ${customers}">
										<td th:text="${c.id}"></td>
										<td th:text="${c.firstName + ' ' + c.lastName}"></td>
										<td th:text="${c.birthDate}"></td>
										<td th:text="${c.mobileNo}"></td>
										<td th:text="${c.addressOne}"></td>
										<td th:text="${c.addressSecond}"></td>
										<td th:text="${c.age}"></td>
										<td th:text="${c.gender}"></td>
										<td th:text="${c.email}"></td>
										<td>
											<a th:href="@{/delete/{id} (id=${c.id})}" class="btn btn-danger" onclick="return confirm('Are you sure you want to delete this item?')">Delete</a>
											<a th:href="@{/editCustomer/{id} (id=${c.id})}" class="btn btn-primary">update</a>
    									</td>
									</tr>
								</tbody>
							</table>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</body>
</html>