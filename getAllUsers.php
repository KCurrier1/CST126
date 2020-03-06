<div align="center">
<h1><u>All Users</u></h1>

<?php

//Save our form data
//$firstName = $_POST["FirstName"];
//$lastName = $_POST["LastName"];

//Credentials for accessing the database
$dbservername = "localhost";
$dbusername = "root";
$dbpassword = "root";
$dbname = "cst126";

//Create connection
$conn = new mysqli($dbservername, $dbusername, $dbpassword, $dbname);

//Check connection
if ($conn->connect_error)
{
    die("Connection Failed: " . $conn->connect_error);
}


//Select all users from the user table and display them as a response
$sql = "SELECT USER_ID, FIRST_NAME, LAST_NAME FROM users";
$result = $conn->query($sql);
if ($result->num_rows > 0) 
{
    //output data of each row
    while ($row = $result->fetch_assoc()) 
    {
        echo "ID: " . $row["USER_ID"] . " Name: " . $row["FIRST_NAME"] . " " . $row["LAST_NAME"] . "<br>";
    }
}
else
{
    echo "No results available";
}

//Close the connection
$conn->close();

?>

</div>