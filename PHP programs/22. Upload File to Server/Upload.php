<?php 

if(is_uploaded_file($_FILES['f1']['tmp_name'])) 

{  
$fname = $_FILES['f1']['name'];            if(move_uploaded_file($_FILES['f1']['tmp_name'],"uploads/$fname"))

 {   
echo "Uploaded successfully";
 } 
else
 {  
echo "Not uploaded";
 }
 } 
?>