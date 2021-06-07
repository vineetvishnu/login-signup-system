<!DOCTYPE html>
<html>

<head>
	<meta charset="UTF-8">
	<meta name="viewport" content="width = device-width, initial-scale = 1.0">
	<meta http-equiv="X-UA-Compatible" content="ie=edge">
	<link rel="stylesheet" href="https://fonts.googleapis.com/icon?family=Material+Icons">
	<link type="text/css" href="stylesignup.css" rel="stylesheet">
	<title> Signup form </title>
</head>

<body>

	<?php
	include 'connect.php';
	
		if(isset($_POST['submit'])){
			
			$firstname = mysqli_real_escape_string($con, $_POST['fname']);
			$lastname = mysqli_real_escape_string($con, $_POST['lname']);
			$email = mysqli_real_escape_string($con, $_POST['email']);
			$pass = mysqli_real_escape_string($con, $_POST['pass']);
			$confirm_pass = mysqli_real_escape_string($con, $_POST['cpass']);
			
			$password = password_hash($pass, PASSWORD_DEFAULT);
			$cpassword = password_hash($confirm_pass, PASSWORD_DEFAULT);
			
			$emailquery = "SELECT * FROM registration WHERE email='$email' ";
			$query = mysqli_query($con, $emailquery);
			
			$emailcount = mysqli_num_rows($query);
			
			if($emailcount>0){
				echo "<br>";
				echo "<br>";
				echo "The email already exists";
				
			}else{
				
				if($pass === $confirm_pass){
					
					$insertquery = "INSERT INTO registration(firstname, lastname, email, password, cpassword) value('$firstname','$lastname','$email','$password','$cpassword')";
					
					$iquery = mysqli_query($con, $insertquery);
					
					if($iquery){
						echo "<br>";
						echo "<br>";
						echo "You are registered succesfully.<br> We will meet you soon, once the login page is developed.";
					}else{
						
						echo "Insertion failure";
						
					}
							
				}else{
					echo "<br>";
					echo "<br>";
					echo "Password mis-match";
				}
				
			}
			
		}

		?>

	<div class="container1">
		<div id="heading"><h2>Sign Up</h2><hr></div>
		<form method="post">
			<div id="tbox"><input id="fname" type="text" placeholder="First Name" name="fname" required>
			<input id="lname" type="text" placeholder="Last Name" name="lname" required></div>
			<div class="textbox"><br><input type="text" placeholder="Email" name="email" required></div><br>
			<div class="textbox"><input type="password" placeholder="Password" name="pass" required></div><br>
			<div class="textbox"><input type="password" placeholder="Confirm Password" name="cpass" required></div><br>
			<div class="submitbtn"><input type="submit" value="Sign Up" name="submit"></div>
		</form>
		<p>Already have an account?<a href="login.php">Login here</a></p>
	</div>
	
</body>

</html>
