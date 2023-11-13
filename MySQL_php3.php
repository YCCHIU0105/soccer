<?php

include("MySQL_php1.php");

$sql = "drop table if exists Info;";
if ($conn->query($sql)==TRUE){

    
    
} else{
    
    echo "Error creating database:". $conn->error;
    
}
    
    
    
    $sql = "CREATE TABLE Info (
    
    ID varchar(20) primary key,

    NAME varchar(20),

    AGE int(2),
    
    COUNTRY varchar(40),
    
    TEAM varchar(40),

    Characteristic varchar(40));";
    
    if ($conn->query($sql)==TRUE){
    
        echo "Table create successfully!";
    
    } else{
    
    echo "Error creating database:". $conn->error;
    
    }
    
    $conn->close();
    
?> 