/* 26.Program to fetch records from the table in Database.
Note: When we are using XAMPP or WAMP, servername = localhost, username = root, password is empty.	*/

<?php 

$conn = mysqli_connect('servername','username','password','databasename');
 
if(!$conn) 
{  
die('Connection failed!'.mysqli_error($conn)); 
} 
$sql = "SELECT * FROM tablename";   $data = mysqli_query($conn,$sql);   while($rec = mysqli_fetch_row($data)) 
{ 
echo "$rec[0]<br>"; 
echo "$rec[1]<br>";
echo "$rec[2]<br>"; 
}
?>
