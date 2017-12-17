
<?php
print_r($_GET);
$ten=$_GET["User"]; 
?><?php
function postIndex($index, $value="")
{
	if (!isset($_POST[$index]))	return $value;
	return trim($_POST[$index]);
}
$sm=postIndex("timac");
$loaiac=postIndex("loaiac");
?>
<?php 
	

	try{
	$pdh=new PDO("mysql:host=localhost;dbname=webchuyenhang","root","");
	$pdh->query("set name 'utf8'");
	}
	catch(Exception $e){
		echo $e->getMessage(); exit;
	}
	if (isset($_POST["timac"]))
		{
			$stmt=$pdh->prepare("Select * from account	JOIN loaiaccount ON account.Loaiaccount = loaiaccount.Maloaiac
 ");
			$stmt->execute();
			$r=$stmt->fetchAll();
			
		}
?>
<table border="1">
<tr>
<td>Username</td>
<td>Password</td>
<td>Loại tài khoản</td>
<td colspan="2">Cập nhật</td>
</tr>

<tr>
<?php

if($loaiac=="3")
{
	foreach($r as $row1){
		$User=$row1["Username"];
		$Password=$row1["Password"];
		$Loai=$row1["Loaiaccount"];
		$Tenloai=$row1["Tenloaiac"];
	
?>
<tr>
<td><?php echo "$User"?></td>
<td><?php echo "$Password"?></td>
<td><?php echo "$Tenloai"?></td>
<td><a href="xoaac.php?ten=<?php echo $User?>"/a>Xóa </td>
<td><a href="doimatkhau.php?ten=<?php echo $User?>"/a>Đổi mật khẩu</td>
</tr>
<?php
}

}else
	if($loaiac=="1")
{
	foreach($r as $row1){
		$User=$row1["Username"];
		$Password=$row1["Password"];
		$Loai=$row1["Loaiaccount"];
		$Tenloai=$row1["Tenloaiac"];
	if($Loai==2){
?>

<tr><td><?php echo "$User"?></td>
<td><?php echo "$Password"?></td>
<td><?php echo "$Tenloai"?></td>
<td><a href="xoaac.php?ten=<?php echo $User?>"/a>Xóa </td>
<td><a href="doimatkhau.php?ten=<?php echo $User?>"/a>Đổi mật khẩu</td>
</tr>
<?php
}
}
}else
if($loaiac==2)
{
	foreach($r as $row1){
		$User=$row1["Username"];
		$Password=$row1["Password"];
		$Loai=$row1["Loaiaccount"];
		$Tenloai=$row1["Tenloaiac"];
	if($Loai==3){
?>

<tr>
<td><?php echo "$User"?></td>
<td><?php echo "$Password"?></td>
<td><?php echo "$Tenloai"?></td>
<td><a href="xoaac.php?ten=<?php echo $User?>"/a>Xóa </td>
<td><a href="doimatkhau.php?ten=<?php echo $User?>"/a>Đổi mật khẩu</td>
</tr>
<?php
}
}
}
?></tr></table>