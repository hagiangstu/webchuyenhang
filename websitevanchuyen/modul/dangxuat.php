<?php
session_start();
//unset($_SESSION[""]);
session_destroy();

header("location:dangnhap1.php");


?>