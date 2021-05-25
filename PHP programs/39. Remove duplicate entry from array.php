/* 40. Write a PHP a function to remove a specified duplicate entry from an array. */


<?php
function array_uniq($my_array, $value) 
{ 
    $count = 0; 
    
    foreach($my_array as $array_key => $array_value) 
    { 
        if ( ($count > 0) && ($array_value == $value) ) 
        { 
            unset($my_array[$array_key]); 
        } 
        
        if ($array_value == $value) $count++; 
    } 
    
    return array_filter($my_array); 
} 
$numbers = array(4, 5, 6, 7, 4, 7, 8);

print_r(array_uniq($numbers, 7));
?>