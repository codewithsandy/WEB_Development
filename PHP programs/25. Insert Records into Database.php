/* 25. Program to Insert records into the table in Database.
------------------------------------------------------------- 
Note: 
When we using XAMPP or WAMP, servername = localhost, 
username = root, password is empty.	*/

<?php

 $conn =mysqli_connect('servername','username','password','databasename');

 if(!$conn) 
{
 die('Connection failed!'.mysqli_error($conn));
 } 
$sql = "INSERT INTO tablename('sno','name','pwd') VALUES('101','Surya','surya123')";
  
 if(mysqli_query($conn,$sql)) 
{  
echo "Record Inserted"; 
 } 
else 
{  
echo mysql_error();
} 
?> 
