/* 24. Program to connect to the server and selecting database
Note: When we are using XAMPP or WAMP, servername = localhost, username = root, password is empty	*/

<?php 
if(!mysql_connect('servername','username','password'))
 {
     die('Connection failed!'.mysql_error());
 }
      if(!mysql_select_db("dbname"))
 {  
die('Database unavailable'.mysql_error()); 
 }
 ?> 
