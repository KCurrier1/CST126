<?php
require_once 'functions.php';

$firstName = $_POST["FirstName"];
$lastName = $_POST["LastName"];
$username = $_POST["username"];
$password = $_POST["password"];


if($firstName == NULL || trim($firstName) == "")
{
    exit("Please enter your First Name");
}

if($lastName == NULL || trim($lastName) == "")
{
    exit("Please enter your Last Name");
}

if($username == NULL || trim($username) == "")
{
    exit("Username is a required field");
}

if($password == NULL || trim($password) == "")
{
    exit("Password is a required field");
}


$conn = dbconnect();
$sql = "INSERT INTO users (FIRST_NAME, LAST_NAME, USERNAME, PASSWORD) 
        VALUES('" . $firstName . "', '" . $lastName . "', '" . $username . "', '". $password . "')";

if ($conn->query($sql) === TRUE) 
{
    echo "You are now registered!!<br>Your info is saved in:<br>";
}
else 
{
    echo "Error: " . $sql. "<br>" . $conn->error;
}

if (mysqli_connect_errno()) 
{
    echo "Failed to connect to MySQL: " . mysqli_connect_error();
}

$conn->close
?>