 <?php
print_r($_GET);
$AC=$_GET["ten"];
print_r($AC);//exit();
?>
 <?php 
	try{
	$pdh=new PDO("mysql:host=localhost;dbname=webchuyenhang","root","");
	$pdh->query("set name 'utf8'");
	}
	catch(Exception $e){
		echo $e->getMessage(); exit;
	}
		
			
			$stmt=$pdh->prepare("Delete FROM account where Username='$AC' ");
			$stmt->execute();
			$n = $stmt->rowCount();
	if($n>=1)
		{
				echo"xóa thành công";
				}
			else
				echo"xóa thất bại";
		
	
		
?>