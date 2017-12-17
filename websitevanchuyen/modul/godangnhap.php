<?php

$pdh=new PDO("mysql:host=localhost; dbname=webchuyenhang","root","");
$pdh->query("set names 'utf8'");
if(!isset($_SESSION)) session_start();
if(!isset($_POST['dangnhap']))
{
	header('location:../index.php');
}else if (!isset($_POST["taikhoan"]) || !isset($_POST["matkhau"])){
	header('location:../index.php');
}else
	if ($_POST["taikhoan"] == "" || $_POST["matkhau"]==""){
	//header('location:../index.php');
	echo "Mời bạn nhập tên đăng nhập và mật khẩu";
}
$u=$_POST["taikhoan"];
$p=$_POST["matkhau"];
$stmt=$pdh->prepare("select * from account where Username='$u' and Password='$p'");
$stmt->execute();
$data=$stmt->fetchAll();
$n=$stmt->rowCount();
$id;
foreach($data as $v)
{
	$ten=$v['Username'];
	$pass=$v['Password'];
	$loai=$v['Loaikh'];
}

if($n!=0)
{

if(($v['Loaiaccount']==1))
{
	header('location:indexadmin.php?ten='.$ten);
	$_SESSION["admin"]=1;
}
else if($v['Loaiaccount']==2)
{
	header('location:../quanlydonhang/indexnhanvien.php?ten='.$ten);
	$_SESSION["nhanvien"]=1;
}
else if($v['Loaiaccount']==3)
{
	header('location:../khachhang/indexkhachhang.php?ten='.$ten);
	$_SESSION["khachhang"]=1;
}
}
else 
{
	header('location:dangnhap1.php');
	echo " Thông tin bạn nhập bị sai !!"
	?>
    <script type="text/javascript">
		alert("<?php echo " Thông tin bạn nhập bị sai !!" ?>" );
		</script>
	<?php
	 
	
	

}
?>
