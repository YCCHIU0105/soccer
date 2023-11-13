<?php

include("MySQL_php1.php");

$sql = "USE jeff;";

if ($conn->query($sql)==TRUE){

echo "DATABASE connect successfully!";

} else{

echo "Error creating database:". $conn->error;

}

$conn->close();

?> 