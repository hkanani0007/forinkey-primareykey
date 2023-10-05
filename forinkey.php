<?php 
$servername = "localhost";
$username = "root";
$password = "";
$dbname = "foring";

$con = mysqli_connect($servername,$username,$password,$dbname);

if(!$con){
     die("file not found".mysqli_connect_error());
};


$sql = "CREATE TABLE CLASS1(
     id INT (6) AUTO_INCREMENT PRIMARY KEY,
     fname VARCHAR(255) NOT NULL,
     lname VARCHAR(255) NOT NULL,
     email VARCHAR(255) NOT NULL,
     phone VARCHAR(255) NOT NULL,
     city_id INT(255) NOT NULL,
     FOREIGN KEY (city_id) REFERENCES forin (id)
)";

if(mysqli_query($con,$sql)){
     echo "create table now";
}else{
     echo "error".mysqli_error($con);
}
mysqli_close($con);
?>