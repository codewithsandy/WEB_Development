/* 28. Program to Read image from Database.
Note: When we using XAMPP or WAMP, servername = localhost, username = root, password is empty.	*/

 <?php

header("content-type:image/jpeg");     mysql_connect("servername","username","password"); 

mysql_select_db("databasename");  
$sql = "select * from tablename";
$data = mysql_query($sql); 
    while($rec=mysql_fetch_row($data))
   { 
     echo "$rec[1]<br>";
   }

 ?>

