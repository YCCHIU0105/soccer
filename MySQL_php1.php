<?php
$servername = "localhost";
$username = "jeff";
$password = "Ss1234";
$db_name="jeff";
// Create connection​

$conn = new mysqli($servername, $username, $password,$db_name);
// Check connection​
if ($conn->connect_error ){
    die("Connection failed: " . $conn->connect_error);
}
echo "Connected successfully";
?> 