<?php
print_r($_GET);
$madh=$_GET["madh"];
?>
 <?php 
	try{
	$pdh=new PDO("mysql:host=localhost;dbname=webchuyenhang","root","");
	$pdh->query("set name 'utf8'");
	}
	catch(Exception $e){
		echo $e->getMessage(); exit;
	}
		
		
			$stmt=$pdh->prepare("DELETE FROM donhang where IDdonhang=".$madh);
			$stmt->execute();
			$n = $stmt->rowCount();
	if($n>=1)
		{
				echo"xóa thành công";
				}
			else
				echo"xóa thất bại";
		
	
		
?>