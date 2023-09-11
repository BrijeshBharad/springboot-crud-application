<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml" xmlns:th="http://www.thymeleaf.org" xmlns:layout="http://www.ultraq.net.nz/thymeleaf/layout">
	<head>
	<meta charset="ISO-8859-1">
	<link th:href="@{../formstyle.css}" rel="stylesheet" />
	<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css">
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
	<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery-validate/1.19.5/jquery.validate.min.js"></script>
	<script type="text/javascript" src="../formscript.js"></script>
	</head>
	<body>
	<div class="Jumbotron">
		<div>
			<h2 class="formheading">Customer Registration</h2>
		</div>
		<div class="container">
			<form id="myform" name="myform" method="post"  action="/post" th:object="${customerform}" >
				<div class="row">
					<div class="col-25" >
						<label></label>
					</div>
					<div class="column2" >
						<input type="hidden" name="id" th:field="*{id}" >
					</div>
				</div>
				<div class="row" >
					<div class="col-25">
						<label for="firstName">Enter First Name:</label>
					</div>
					<div class="column2" >
						<input type="text" name="firstName" id="firstName"
							th:field="*{firstName}">
					</div>
				</div>
				<br>
				<div class="row" >
					<div class="col-25">
						<label for="lastName">Enter last Name:</label>
					</div>
					<div class="column2" >
						<input type="text" name="lastName" id="lastName"
							th:field="*{lastName}">
					</div>
				</div>
				<br>
				<div class="row" >
					<div class="col-25" >
						<label for="birthDate">Enter Birth Date:</label>
					</div>
					<div class="column2" >
						<input type="date" name="birthDate" id="birthDate" class="input-box"  th:field="*{birthDate}" data-date-format="DD MM YYYY">
					</div>
				</div>
				<br>
				<div class="row" >
					<div class="col-25">
						<label for="mobileNo">Enter Contact No:</label>
					</div>
					<div class="column2">
						<input type="tel" name="mobileNo" id="mobileNo" minlength="10" maxlength="10" pattern="[1-9]{1}[0-9]{9}" title=" Contact number must be of 10 digits" th:field="*{mobileNo}">
					</div>
				</div>
				<br>
				<div class="row" >
					<div class="col-25" >
						<label for="addressOne">Enter Address:</label>
					</div>
					<div class="column2" >
						<input type="text" name="addressOne" id="addressOne" th:field="*{addressOne}">
					</div>
				</div>
				<br>
				<div class="row" >
					<div class="col-25">
						<label for="addressSecond">Enter Address2:</label>
					</div>
					<div class="column2" >
						<input type="text" name="addressSecond" id="addressSecond" th:field="*{addressSecond}">
					</div>
				</div>
				<br>
				<div class="row" >
					<div class="col-25">
						<label for="age" >Enter your Age:</label>
					</div>
					<div class="column2" >
						<input type="number" id="age" name="age" min="0" max="110" th:field="*{age}">
					</div>
				</div>
				<br>
				<div class="row" >
					<div class="col-25" >
						<label for="gender">Select your Gender:</label>
					</div>
					<div class="column2" >
						Male
						<input type="radio" name="gender" value="true" th:field="*{gender}">
						Female
						<input type="radio" name="gender" value="false" th:field="*{gender}">
					</div>
				</div>
				<br>
				<div class="row" >
					<div class="col-25" >
						<label for="email" >Enter Your Email:</label>
					</div>
					<div class="column2" >
						<input type="email" name="email" th:field="*{email}">
					</div>
				</div>
				<br>
				<div class="container2">
					<div class="btn-group btn-group-justified">
						<div>
							<input type="submit" class="btn btn-primary" value="Submit" id="subbutton">
						</div>
					</div>
				</div>
			</form>
		</div>
	</div>
</body>
</html>