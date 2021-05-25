/*37. Write a PHP script to sort the following array by the day (page_id) and username.*/

<?php
$arra[0]["transaction_id"] = "2025731470"; 
$arra[1]["transaction_id"] = "2025731450"; 
$arra[2]["transaction_id"] = "1025731456"; 
$arra[3]["transaction_id"] = "1025731460"; 

$arra[0]["user_name"] = "Sana"; 
$arra[1]["user_name"] = "Illiya"; 
$arra[2]["user_name"] = "Robin"; 
$arra[3]["user_name"] = "Samantha"; 

//convert timestamp to date 
function convert_timestamp($timestamp){ 
    $limit=date("U"); 
    $limiting=$timestamp-$limit; 
    return date ("Ymd", mktime (0,0,$limiting)); 
} 

//comparison function 
function cmp ($a, $b) { 
    $l=convert_timestamp($a["transaction_id"]); 
    $k=convert_timestamp($b["transaction_id"]); 

    if($k==$l){ 
        return strcmp($a["user_name"], $b["user_name"]); 
    }
else{ 
        return strcmp($k, $l); 
    } 
} 

//sort array 
usort($arra, "cmp"); 

//print sorted info 
while (list ($key, $value) = each ($arra)) 
{ 
    echo "\$arra[$key]: "; 
    echo $value["transaction_id"]; 
    echo " user_name: "; 
    echo $value["user_name"]; 
    echo "\n"; 
} 
?>