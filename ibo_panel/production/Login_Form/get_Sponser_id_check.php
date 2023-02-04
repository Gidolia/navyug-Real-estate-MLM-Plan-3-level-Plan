<?php include "../../../database_connect.php";
$s = $_REQUEST['s'];
function isNumber($c) {
        return preg_match('/[0-9]/', $c);
    }
    $string=$s;
       
    $chars = '';
    $d_id = '';
    for ($index=0;$index<strlen($string);$index++) {
        if(isNumber($string[$index]))
        {
            $d_id .= $string[$index];
        }
        else {
            $chars .= $string[$index];}
    }
$hint = "";

// lookup all hints from array if $s is different from ""
if ($s != "") {
  $sqlkj="SELECT * FROM `distributor` WHERE `d_id`='$d_id'";
  $dfgh=$con->query($sqlkj);
  $sa=$dfgh->fetch_assoc();
  $hd=$sa['name'];
  
	if($dfgh->num_rows > 0)
	{
	
	    $hint=$hd;
	}
	else
	{
	    $hint="Sponser Id Incorrect";
	}
}

// Output "no suggestion" if no hint was found or output correct values
echo $hint;

?>