<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" 
 rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC"
 crossorigin="anonymous">
</head>
<body>
	<nav class="navbar navbar-expand-lg navbar-light bg-primary">
  <div class="container-fluid">
    <a class="navbar-brand" href="#">Employee Management System</a>
    <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
      <span class="navbar-toggler-icon"></span>
    </button>
    <div class="collapse navbar-collapse" id="navbarSupportedContent">
      <ul class="navbar-nav me-auto mb-2 mb-lg-0">
        <li class="nav-item">
          <a class="nav-link active" aria-current="page" href="home">Home</a>
        </li>
        <li class="nav-item">
          <a class="nav-link" href="addEmp">Add Emp</a>
        </li>
  
      </ul>
 
    </div>
  </div>
</nav>

<div class="conatiner">
	<div class="row">
		<div class="col-md-6 offset-md-3">
			<div class="card">
				<div class="card-header text-center">
					<h3>Add Emp</h3>
				</div>
				<div class="card-body">
					<form action="createEmp" method="post">
						<div class="mb-3">
							<label>Enter your full name</label>
							<input type="text" name="fullname" class="form-control">
						</div>
						<div class="mb-3">
							<label>Enter your full Address</label>
							<input type="text" name="address" class="form-control">
						</div>
						<div class="mb-3">
							<label>Enter your full email</label>
							<input type="text" name="email" class="form-control">
						</div>
						<div class="mb-3">
							<label>Enter your full password</label>
							<input type="text" name="password" class="form-control">
						</div>
						<div class="mb-3">
							<label>Enter your full designation</label>
							<input type="text" name="designation" class="form-control">
						</div>
						<div class="mb-3">
							<label>Enter your full salary</label>
							<input type="text" name="salary" class="form-control">
						</div>
						
						<button class="btn btn-primary">Submit</button>
					</form>
				</div>
			</div>
		</div>
	</div>
</div>
</body>
</html>