/* 15 . Program to simple calculator */

<?php

 if(isset($_POST['sub']))
 {
  
$txt1=$_POST['n1'];                       $txt2=$_POST['n2'];     $oprnd=$_POST['sub'];

 if($oprnd=="+")  
$res=$txt1+$txt2;
else if($oprnd=="-")              $res=$txt1-$txt2;

else if($oprnd=="x")        $res=$txt1*$txt2;
else if($oprnd=="/")    $res=$txt1/$txt2;
 } 
?>

<form method="post" action=""> 
Calculator 
<br>

No1:<input name="n1" value="<?php echo $txt1; ?>"> <br>

No2:<input name="n2" value="<?php echo $txt2; ?>"> <br>

Res:<input name="res" value="<?php echo $res; ?>">
<br>

<input type="submit" name="sub" value="+">

<input type="submit" name="sub" value="-">

<input type="submit" name="sub" value="x">

<input type="submit" name="sub" value="/">

 </form>