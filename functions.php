<?php

function dbconnect(){
    // Credentials for accessing the database, make sure you change the DB name to your DB name. 
    
$dbservername = "localhost";
$dbusername = "root";
$dbpassword = "root";
$dbname = "cst126";

// Create connection
$conn = new mysqli($dbservername, $dbusername, $dbpassword, $dbname);

// Check connection
if ($conn->connect_error)
{
    die("Connection failed: " . $conn->connect_error);
}

return $conn;
}

//New function for saving session data
function saveUserID($id) 
{
    session_start();
    $_SESSION["USER_ID"] = $id;
}

function getUserID()
{
    //session_start();
    return $_SESSION["USER_ID"];
}

function saveUserName($name)
{
    session_start();
    $_SESSION["USERNAME"] = $name;
}

function getUserName()
{
    //session_start();
    return $_SESSION["USERNAME"];
}


?>


