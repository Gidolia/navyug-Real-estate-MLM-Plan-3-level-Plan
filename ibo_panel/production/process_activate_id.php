<?php
include "config.php";


if(isset($_POST[activate_id]))
{
    if($_POST[pin_type]==50000){
        $a_pin=$d_detail[pin_wallet_50000]-1;
        
        $up="UPDATE `distributor` SET `pin_wallet_50000` = '$a_pin' WHERE `distributor`.`d_id` = '$_SESSION[d_id]';";
        
        $qw="INSERT INTO `pin_wallet_50000` (`pw_id`, `d_id`, `date`, `time`, `type`, `pin_qty`, `b_pin`, `a_pin`, `note`, `pr_id`, `txn_id`) VALUES (NULL, '$_SESSION[d_id]', '$date', '$time', '-', '1', '$d_detail[pin_wallet_50000]', '$a_pin', 'Used For Activate ID', '', '');";
        
    }
    elseif($_POST[pin_type]==100000){
        $a_pin=$d_detail[pin_wallet_100000]-1;
        
        $up="UPDATE `distributor` SET `pin_wallet_50000` = '$a_pin' WHERE `distributor`.`d_id` = '$_SESSION[d_id]';";
        
        $qw="INSERT INTO `pin_wallet_100000` (`pw_id`, `d_id`, `date`, `time`, `type`, `pin_qty`, `b_pin`, `a_pin`, `note`, `pr_id`, `txn_id`) VALUES (NULL, '$_SESSION[d_id]', '$date', '$time', '-', '1', '$d_detail[pin_wallet_100000]', '$a_pin', 'Used For Activate ID', '', '');";
        
    }
    elseif($_POST[pin_type]==250000){
        $a_pin=$d_detail[pin_wallet_250000]-1;
        
        $up="UPDATE `distributor` SET `pin_wallet_250000` = '$a_pin' WHERE `distributor`.`d_id` = '$_SESSION[d_id]';";
        
        $qw="INSERT INTO `pin_wallet_250000` (`pw_id`, `d_id`, `date`, `time`, `type`, `pin_qty`, `b_pin`, `a_pin`, `note`, `pr_id`, `txn_id`) VALUES (NULL, '$_SESSION[d_id]', '$date', '$time', '-', '1', '$d_detail[pin_wallet_250000]', '$a_pin', 'Used For Activate ID', '', '');";
    }
    
    $dv="INSERT INTO `activate_id_pin` (`aip_id`, `d_id`, `a_d_id`, `date`, `time`, `pin_type`, `status`, `c_date`, `c_time`, `note`, `plot_no`, `project_name`) VALUES (NULL, '$_SESSION[d_id]', '$_SESSION[d_id]', '$date', '$time', '$_POST[pin_type]', 'P', '', '', '', '$_POST[plot_no]', '$_POST[project_name]');";
    if($con->query($up)===TRUE && $con->query($qw)===TRUE && $con->query($dv)===TRUE)
    {
        echo "<script>alert('Success! Requested Successfully It take 24 ho');
		location.href='activate_id_pina.php';</script>";
    }
    else{
        echo "<script>alert('Failed! Plz Try Again');
		location.href='activate_id_pina.php';</script>";
    }
}


?>