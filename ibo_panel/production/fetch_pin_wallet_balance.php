<?php
include "config.php";

$rd="SELECT * FROM `distributor` WHERE `d_id`='$_SESSION[d_id]'";
$dc=$con->query($rd);
$f=$dc->fetch_assoc();
if($_GET[q]=='50000')
{
    echo $f[pin_wallet_50000]+0;
}
elseif($_GET[q]=='100000')
{
    echo $f[pin_wallet_100000]+0;
}
elseif($_GET[q]=='250000'){
    echo $f[pin_wallet_250000]+0;
}