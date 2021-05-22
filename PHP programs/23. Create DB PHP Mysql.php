/* 23. Program to create a New Database using PHP and Mysql
Note: When we are using XAMPP or WAMP, servername = localhost, username = root, password is empty. */
<?php
 if(! mysql_connect('servername','username','password'))
 { 
    die('Connection failed!'.mysql_error()); 
 }
$sql = "create database newdb"; if(mysql_query($sql))

{ 
 echo "Database created"; 
}
else
{ 
  echo mysql_error(); 
} 
?> 

