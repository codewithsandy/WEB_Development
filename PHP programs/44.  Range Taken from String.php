/* 44. Write a PHP program to generate an array with a range taken from a string. */

<?php
function string_range($str1) 
{
  preg_match_all("/([0-9]{1,2})-?([0-9]{0,2}) ?,?;?/", $str1, $a);
  $x = array ();
  foreach ($a[1] as $k => $v) 
  {
    $x  = array_merge ($x, range ($v, (empty($a[2][$k])?$v:$a[2][$k])));
  }
  return ($x);
}
$test_string = '1-2 18-20 9-11';
print_r(string_range($test_string));
?>