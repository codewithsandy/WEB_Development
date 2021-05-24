/* 36. Write a PHP function to floor decimal numbers with precision. */

<?php
function floorDec($number, $precision, $separator)

{
$number_part=explode($separator, $number);
$number_part[1]=substr_replace($number_part[1],$separator,$precision,0);

if($number_part[0]>=0)
{
$number_part[1]=floor($number_part[1]);}
else
{
$number_part[1]=ceil($number_part[1]);
}

$ceil_number= array($number_part[0],$number_part[1]);
return implode($separator,$ceil_number);
}
print_r(floorDec(1.155, 2, ".")."\n");
print_r(floorDec(100.25781, 4, ".")."\n");
print_r(floorDec(-2.9636, 3, ".")."\n");
?>