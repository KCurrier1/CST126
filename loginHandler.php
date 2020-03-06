<?php

require_once 'functions.php';

$username = $_POST["username"];
$password = $_POST["password"];

if($username == NULL || trim($username) == "")
{
    exit("Username is a required field");
}

if($password == NULL || trim($password) == "")
{
    exit("Password is a required field");
}

$conn = dbconnect();
$sql = "SELECT USER_ID, USERNAME, PASSWORD FROM users WHERE " . "BINARY USERNAME='" . $username ."' AND " . " BINARY PASSWORD='" . $password . "'";
$result = $conn->query($sql);

if ($conn->error)
{
    echo "Error: " . $sql . "<br>";
}
elseif ($result->num_rows == 1)
{
    echo "Login was successful.";
    $row= $result->fetch_assoc();
    saveUserID($row["USERNAME"]);
    include('whoAmI.php');
}
elseif ($result->num_rows == 0)
{
    echo "Login Failed.";
}

elseif ($result->num_rows > 1)
{
    echo "Multiple users have registered";
}

$conn->close();


?>