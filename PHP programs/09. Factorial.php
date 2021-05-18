/*    9. Factorial of a number in Php 
       Output: Factorial of 4 is 24		*/


<?php 
$num = 4; 
$factorial = 1; 
for($x=$num; $x>=1; $x--)
 {
 $factorial = $factorial * $x;
 } 
echo "Factorial of $num is  $factorial";
?>

