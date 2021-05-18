/* 12. Write a PHP program to get the size of a file. */

<?php
$myfile = fopen("/home/students/ppp.txt", "w") or die("Unable to open file!"); 
$txt = "PHP Exercises\n"; fwrite($myfile, $txt);
$txt = "from\n"; fwrite($myfile,$txt); 
$txt = "hello World\n"; fwrite($myfile, $txt); fclose($myfile);
echo "Size of the file".filesize("/home/students/ppp.txt")."\n"; 
?>