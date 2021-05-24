/* 34. Write a PHP script to get the shortest/longest string length from an array.*/ 

<?php

$my_array = array("abcd","abc","de","hjjj","g","wer");
$new_array = array_map('strlen', $my_array);

// Show maximum and minimum string length using max() function and min() function 

echo "The shortest array length is " . min($new_array) .
". The longest array length is " . max($new_array).'.';

?>