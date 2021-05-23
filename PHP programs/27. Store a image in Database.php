/* 27. Program to Store a image in Database
   Note: When we using XAMPP or WAMP, servername = localhost, username = root, password is empty.  */


 <?php

  if(isset($_POST['sub'])) 
   
{   
 $cont =   file_get_contents($_FILES['f1']['tmp_name']);  
$type = $_FILES['f1']['type'];         $cont=addslashes($cont);  
    mysql_connect("servername","username","password"); 
mysql_select_db("dbname");   $sql="insert into tablename values ('','$cont','$type')";  
 
if(mysql_query($sql))   
echo "Inserted";   
else  
echo mysql_error();   
}
?>

 <form method="post" action="" enctype="multipart/form-data">

 <input type="file" name="f1">

Image : <input type="submit" value="Upload" name="sub"> 

