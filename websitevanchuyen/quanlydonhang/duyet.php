thành sửa
<?php

print_r($_GET);
$ma=$_GET["manv"];
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
?>

<form action="PHP.php?ma=<?php echo $manv?> & madh=<?php echo $madh?>" method="post">
<table>
<tr><td>Nhân viên vận chuyển:</td><td><input  type="text" name="id" required /></td></tr>
</br>
<tr><td>Ngày duyệt  		:</td><td><input type="date" name="ngay"/>	</td></br>
                            <tr><td><input type="submit" name="update" value="thêm" onclick=""/></td>

</tr>
</table>
</form>

 
<?php
function postIndex($index, $value="")
{
	if (!isset($_POST[$index]))	return $value;
	return trim($_POST[$index]);
}
 $update=postIndex("update");
 $id=postIndex("id");
 $ngay=postIndex("ngay");
print_r($update);
print_r($id);
print_r($ngay);
 ?>
 <?php

		if (isset($_POST["update"])){
		
			$stmt=$pdh->prepare("UPDATE donhang set IDnvquanlydonhang='$ma',Xuly='8',Ngayduyetdon='$ngay' ,IDnvchuyenhang= '$id'			                                where IDdonhang='$madh'");
		//	$arr=array(":ngay"=>$_POST["ngay"],":id"=>$_POST["id"]);
			$stmt->execute();
			$n = $stmt->rowCount();
	if($n>=1)
		{
				echo"duyệt thành công";
				}
			else
				echo"duyệt thất bại";
		}
	
		
?>