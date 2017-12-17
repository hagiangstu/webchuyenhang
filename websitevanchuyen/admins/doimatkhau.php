
<?php
print_r($_GET);
$ten=$_GET["ten"]; 
?>
<?php
function postIndex($index, $value="")
{
	if (!isset($_POST[$index]))	return $value;
	return trim($_POST[$index]);
}
 $sua=postIndex("sua");
 $xoa=postIndex("xoa");
 ?>
 <?php
 try{
	$pdh=new PDO("mysql:host=localhost;dbname=webchuyenhang","root","");
	$pdh->query("set name 'utf8'");
	}
	catch(Exception $e){
		echo $e->getMessage(); exit;
	}
		
			$stmt=$pdh->prepare(" SELECT * FROM khachhang JOIN account ON khachhang.Username = account.Username");
			$stmt->execute();
			$r=$stmt->fetchAll();
			?>
			<?php 
				foreach($r as $row1){
					$Username=$row1["Username"];
					$Password=$row1["Password"];
					$Tenkh=$row1["Tenkh"];
					$Diachi=$row1["Diachi"];
					$Gioitinh=$row1["Gioitinh"];
					$Sdt=$row1["Sdt"];
					$Email=$row1["Email"];
					$Ngaysinh=$row1["Ngaysinh"];
					$Loaikh=$row1["Loaikh"];
					
                    
		
		}	
		//print_r($r);
	
			?>
	
    
	<form action="sua.php?ten=<?php echo $ten?>" method="post" >
           
            <table align="center">
             <tr><td>Uername:</td><td><input  type="tel" value="<?php echo "$ten"?>" name="Username"</td></tr>
           	<tr><td>Password  :</td><td><input type="password" name="Password" required></td></tr></br>
            <tr><td>Nhập lại Password  :</td><td><input type="password" name="Password1" required></td></tr></br>
            <hr />
             
            
            <tr><td><input type="submit" name="sua" value="Sửa"</td></tr>
            <?php
        /*   	$err= "";
if ($sua !="")
{
	
	if ($Password!= $Password1) 	{$err .="Mật khẩu và mật khẩu nhập lại không khớp. <br>";}
	if(str_word_count($Tenkh)<2) 	{$err .="Họ tên phải chứa ít nhất 2 từ ";}

	
		if (checkEmail($Email)==false) {
			echo "Định dạng email sai!<br>";
		}
		if (checkPass($Password)==false) 
			{echo "Mật khẩu phải có 8 ký tự, có ít nhất 1 ký tự số và 1 ký tự Hoa và 1 ký tự Thường <br>";}
		if (checkSdt($Sdt)==false) 
			echo "Vui lòng nhập đúng sđt!<br>";
}
	if($err != "")
	{
	echo $err;
	}
	else
			if(isset($_POST["sua"])){
			$stmt=$pdh->prepare(" update account set Password=".$Password);
			$stmt->execute(); 
			$stmt=$pdh->prepare(" update khachhang set Tenkh=".$Tenkh.",Diachi=".$Diachi.",Gioitinh=".$Gioitinh.",Sdt=".$Sdt.",Email=".$Email.",Ngaysinh=".$Ngaysinh.",Loaikh=".$Loaikh);
			$stmt->execute(); 
			$n=$stmt->rowCount();
			if($n>=1)
		{
				echo"cập nhật thành công";
				}
			else
				echo"cập nhật thất bại";
		
		
}*/
?>