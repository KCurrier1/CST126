<?php

require_once 'functions.php';

$blogTitle = $_POST["blogTitle"];
$blogContent = $_POST["blogContent"];
$blogDate = $_POST["blogDate"];

$conn = dbconnect();
$sql = "INSERT INTO blogs (BLOG_TITLE, BLOG_CONTENT, BLOG_DATE)
        VALUES('" . $blogTitle . "', '" . $blogContent . "', '" . $blogDate ."')";

if ($conn->query($sql) === TRUE)
{
    echo "Your blog has been posted!";
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

