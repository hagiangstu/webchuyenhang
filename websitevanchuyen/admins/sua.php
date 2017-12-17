
<?php
function postIndex($index, $value="")
{
	if (!isset($_POST[$index]))	return $value;
	return trim($_POST[$index]);
}
    function checkEmail($string)
{  
	if (preg_match("/^[a-zA-Z0-9._-]+@[a-zA-Z0-9-]+\.[a-zA-Z.]{2,5}$/", $string))
	 return true;
	return false;	
	
}
function checkPass($string)
{
	if(strlen($string)>=8){
		if (preg_match("/^([AZ-az])([\w_\.!@#$%^&*()]+)*$/",$string)) 
		  return true;
		return false;
	}
	else return false;
}
function checkSdt($string)
{
	if(strlen($string)<=10||strlen($string)<=11)
		if (preg_match("/^[0-9]*$/",$string)) 
		  return true;
		return false;
}
 $sua=postIndex("sua");
 $ten=postIndex("Username");
 print_r($ten);
 $Password=postIndex("Password");
  $Password1=postIndex("Password1");
  $Tenkh=postIndex("Tenkh");
  $Sdt = postIndex("Sdt");
$Email = postIndex("Email");
 ?> <?php
	try{
	$pdh=new PDO("mysql:host=localhost;dbname=webchuyenhang","root","");
	$pdh->query("set name 'utf8'");
	}
	catch(Exception $e){
		echo $e->getMessage(); exit;
	}
/*	$err= "";
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
	else*/
			if(isset($_POST["sua"])){
			$stmt=$pdh->prepare(" UPDATE account SET Password=2 where Username=".$ten);
			$stmt->execute(); 
		/*	$stmt=$pdh->prepare(" update khachhang set Tenkh=".$Tenkh.",Diachi=".$Diachi.",Gioitinh=".$Gioitinh.",Sdt=".$Sdt.",Email=".$Email.",Ngaysinh=".$Ngaysinh.",Loaikh=".$Loaikh."where Username=$ten");
			$stmt->execute(); */
			$n=$stmt->rowCount();
			if($n>=1)
		{
				echo"cập nhật thành công";
				}
			else
				echo"cập nhật thất bại";
			}
		

			?>