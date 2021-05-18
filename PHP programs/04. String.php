/* 4. String  */

<?php
$variable = “name”;
$literally = ‘My $variable will not print!\\n’;
print($literally);
$literally = “My $variable will print!\\n”;
print($literally);
?>
/*
This will produce following result:

My name will not print!
My name will print 
*/