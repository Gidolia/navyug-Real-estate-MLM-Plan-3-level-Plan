<?php include "../../../database_connect.php";

function password_generate($chars) 
{
  $data = '123456789';
  return substr(str_shuffle($data), 0, $chars);
}
for($x=0; $x<100; $x++)
{
    //echo $x;
    $d_id=password_generate(4);
    $sqsqqs="SELECT * FROM `distributor` WHERE `d_id`='$d_id'";
    $qur=$con->query($sqsqqs);
    if(mysqli_num_rows($qur)==0)
    {
        break;
    }
}


function isNumber($c) {
        return preg_match('/[0-9]/', $c);
    }
    $string=$_POST[s_id];
       
    $chars = '';
    $sd_id = '';
    for ($index=0;$index<strlen($string);$index++) {
        if(isNumber($string[$index]))
        {
            $sd_id .= $string[$index];
        }
        else {
            $chars .= $string[$index];}
    }



if(isset($_POST[reg_submit]))
{
if($_POST[password]==$_POST[c_password])
{    
        
 //$ss="INSERT INTO `registration_form` (`id_no`, `username`, `password`, `name`, `mobile`, `ref_code`, `email`, `Withdraw`, `adhar_card`, `wallet_balance`, `d_o_b`, `address`, `city`, `state`, `pancard_no`, `alt_mobile`, `status`, `Invest_wallet`, `r_date`, `shere_ref_code`) VALUES ('$id_no', '$_POST[m_number]', '$_POST[c_password]', '$_POST[full_name]', '$_POST[m_number]', '$_POST[refarence]', '$_POST[email]', '00.0', '', '00.0', '', '', '', '', '', '', '', '00.0', '$date', 'FAL$refcode');";
 
 $ss="INSERT INTO `distributor` (`d_id`, `s_id`, `name`, `mobile`, `a_mobile`, `dob`, `password`, `date`, `time`, `a_status`, `a_date`, `a_time`, `city`, `state`, `addreass`, `pincode`, `withdrawal_wallet`, `pan_card_no`, `kyc_status`, `block_status`, `pin_wallet_50000`, `admin`, `tds`, `email`) VALUES ('$d_id', '$sd_id', '$_POST[full_name]', '$_POST[mobile]', '', '$_POST[dob]', '$_POST[c_password]', '$date', '$time', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '$_POST[email]');";
if($con->query($ss)===TRUE)
{
    $d_id=($d_id+7723)*9896;
    //echo "sucsses";
	echo "<script>alert('Registration successfully');location.href='reg_successful.php?d_id=".$d_id."';</script>";
}else{echo "fail";}
}else{
    echo "<script>alert('Confirm password not matched');
		location.href='reg_form.php';</script>";
    
    
}

}
?>