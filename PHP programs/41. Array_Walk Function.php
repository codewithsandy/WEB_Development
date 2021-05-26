/* 41. Write a PHP script to trim all the elements in an array using array_walk function. */

<?php
$colors = array( "Red ", " Green", "Black ", " White "); 
print_r($colors);
array_walk($colors, create_function('&$val', '$val = trim($val);')); 
print_r($colors);
?>