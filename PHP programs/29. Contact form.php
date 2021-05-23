/* 29. Contact form using Php  */

contactform.php

<html> 
<head>
</head> 
<body>
<h4>Contact Form</h4>
<form method="post "action="sendmail
.php">
 Name : <input type="text"name="uname"><br> 
Mobile No. : <input type="text" name="mobile"><br> 
Email id : <input type="text" name="email"><br> 
Message : <textarea name="message">
</textarea><br> 
<input type="submit" value="Submit">
</form> 
</body> 
</html> 

sendmail.php

<?php 
$uname = $_POST['uname']; 
$mobile = $_POST['mobile'];
$email = $_POST['email']; 
$message = $_POST['message'];

$to = "admin@gmail.com"; 
$subject = "Contact"; 
$message = $message."\n Name: ".$uname."\n Mobile: ".$mobile."\n Email: $email;
if(mail($to,$subject,$message))
 { 
       echo "Thank you for contacting us";
 } 
else
 {
         echo "Try again"; 
} 
?>