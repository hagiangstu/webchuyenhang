<?php 
print_r($_GET);
$ten=$_GET["ten"];
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

<?php
function postIndex($index, $value="")
{
	if (!isset($_POST[$index]))	return $value;
	return trim($_POST[$index]);
}
function checkUserName($string)
{
	if (preg_match("/^[a-zA-Z0-9._-]*$/",$string)) 
	  return true;
	return false;
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
$sm = postIndex("dangky");
$Username = postIndex("Username");
$Password = postIndex("Password");
$Password1 = postIndex("Password1");
$Tenkh = postIndex("Tenkh");
$Diachi = postIndex("Diachi");
$Gioitinh = postIndex("Gioitinh");
$Sdt = postIndex("Sdt");
$Email = postIndex("Email");
$Loaikh = postIndex("Loaikh");
$Ngaysinh = postIndex("Ngaysinh");

?> 

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml"><!-- InstanceBegin template="/Templates/trangchuaccount.dwt.php" codeOutsideHTMLIsLocked="false" -->
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<link rel="stylesheet" type="text/css" href="../style/css.css" />
<!-- InstanceBeginEditable name="doctitle" -->
<title>website vận chuyển</title>
<!-- InstanceEndEditable -->
<link rel="stylesheet" type="text/css" href="../modul/modul/dangnhap1.php" />
<!-- InstanceBeginEditable name="head" -->
<!-- InstanceEndEditable -->
</head>

<body>
<!-- InstanceBeginEditable name="content" -->
<div class="wrapper">
  <div class="header"><img src="../images/banner.jpg" width="1333" height="120" /></div>
  <div class="menu">
    <ul >
      <li><a href="../modul/index.php">Trang Chủ</a></li>
      <li><a href="#">Bảng Giá</a></li>
      <li><a href="#">Quy Trình Giao Hàng</a></li>
      <li><a href="#">Liên Hệ</a></li>
      <li><a href="../modul/modul/dangky.php">Đăng ký</a></li>
      <li><?php 
	  if(isset($_SESSION["dadangnhap"]))
	   echo  "Xin chào ".$ten;
	   ?>
       </li>
      <li><a href="../modul/dangxuat.php">Đăng xuất</a></li>
      <li>&nbsp;</li>
      <li>&nbsp;</li>
      <li>&nbsp;</li>
      <li class="timkiem">
        <input type="text" name="tk" value="   mã đơn hàng cần tìm..."  size="40px"/>
        <input type="submit" name="tiemkiem" value="Tìm" size="10px" />
      </li>
    </ul>
  </div>
  <div class="content">
    <div class="left">
      <p style="text-align:center; background:#F00; color:#FFF; padding:10px; margin-top:1px">DANH SÁCH</p>
      <div class="danhsachmuc">
        <ul>
          <li><a href="quanlyaccount.php?ten=<?php echo $ten?>">Quản lý Account</a></li>
          <li><a href="#">Tạo Account</a></li>
        </ul>
      </div>
      <!--K?T THÚC M?C DANH SÁCH-->
      <p style="text-align:center; background:#F00; color:#FFF; padding:10px; margin-top:1px">CHĂM SÓC KHÁCH HÀNG</p>
      <div class="danhsachmuc">
        <p style="text-align:center; color:#000; margin:10px; font-size:15px">TỔNG ĐÀI: 0123 4321 123</p>
        <p style="text-align:center; color:#000; margin:10px; font-size:15px">ĐỊA CHỈ LIÊN HỆ: 123F/321 LÊ LỢI TPHCM</p>
      </div>
      <!--KẾT THÚC MỤC DANH SÁCH-->
      <img src="../images/icon2.png" width="279" height="231" /> <img src="../images/icon3.png" width="281" height="208" /> </div>
    <div class="right"> 
    
       		<form action="dangkynv.php" method="post" >
           
            <table align="center"
            <tr><td></td></tr>
           
            <tr><td>Tài khoản:</td><td><input type="text" name="Username" required ></td></tr></br>
            <tr><td>Password  :</td><td><input type="password" name="Password" required></td></tr></br>
            <tr><td>Nhập lại Password  :</td><td><input type="password" name="Password1" required></td></tr></br>
            <hr />
             <tr><td>Tên nhân viên: </td><td><input type="text" name="Tenkh" required/></td></tr></br>
            <tr><td>Giới tính: </td><td><input type="radio" checked="checked" name="Gioitinh" value="1" />nam
            							<input type="radio" name="Gioitinh" value="2" />nữ</td></tr></br>
            <tr><td>Số điện thoại: </td><td><input type="text" name="Sdt" required ></td><td></td></tr></br>
            <tr><td>Email: </td><td><input type="text" name="Email" required /></td></tr>
            <tr><td>Ngày sinh: </td><td><input type="date" name="Ngaysinh" required/></td></tr></br>
			<tr><td>Loainv: </td><td><input type="radio" checked="checked" name="Loaikh" value="2" /> quản lý đơn hàng            																					                                        <input type="radio" name="Loaikh" value="3" />tổng đài  
            							    <input type="radio" name="Loaikh" value="4" />giao hàng </td></tr></br>  
            <tr><td><input type="submit" name="dangky" value="Đăng ký" /></td>
            <td ><a href="dangnhap.php">Quay lại trang đăng nhập</a></td></tr>
          	 	
            </table>
            <tr><td><?php ?></td>
            </tr>
            </form>
           <?php
		   
$err= "";
if ($sm !="")
{
	
	if (strlen($Username)<6 ) 		{$err .=" Username ít nhất phải 6 ký tự!<br>";}
	if ($Password!= $Password1) 	{$err .="Mật khẩu và mật khẩu nhập lại không khớp. <br>";}
	if(str_word_count($Tenkh)<2) 	{$err .="Họ tên phải chứa ít nhất 2 từ ";}

		if (checkUserName($Username)==false) {
			echo "Username: Các ký tự được phép: a-z, A-Z, số 0-9, ký tự ., _ và - <br>";
			}
		if (checkEmail($Email)==false) {
			echo "Định dạng email sai!<br>";
			}
		if (checkPass($Password)==false){ 
			echo "Mật khẩu phải có 8 ký tự, có ít nhất 1 ký tự số và 1 ký tự Hoa và 1 ký tự Thường <br>";
			}
		if (checkSdt($Sdt)==false) 
			echo "Vui lòng nhập đúng sđt!<br>";
}
	if($err != "")
	{
	echo $err;
	}
	else
	if (isset($_POST["dangky"]))
	

	{
	$sql="insert into account(Username,Password,Loaiaccount) values(:Username, :Password,:Loaiaccount )";
	$arr = array(":Username"=>$_POST["Username"], ":Password"=>$_POST["Password"], ":Loaiaccount"=>2);
	$stm= $pdh->prepare($sql);
	$stm->execute($arr);
		$n = $stm->rowCount();
	
if($n>=1)
{
	


	$sql="insert into nhanvien(Username,Ten,Gioitinh,Sdt,Email,Loainv,Ngaysinh) values(:Username ,:Tenkh,  :Gioitinh, :Sdt ,:Email ,:Loainv, :Ngaysinh)";
	$arr = array(":Username"=>$_POST["Username"],":Tenkh"=>$_POST["Tenkh"],  ":Gioitinh"=>$_POST["Gioitinh"]    ,       ":Sdt"=>$_POST["Sdt"], ":Email"=>$_POST["Email"], ":Loainv"=>$_POST["Loaikh"], ":Ngaysinh"=>$_POST["Ngaysinh"]);
	$stm= $pdh->prepare($sql);
	$stm->execute($arr);
	$m = $stm->rowCount();
	
if($m>=1)
		{
				echo"đăng ký thành công";
				}
			else
				echo"đăng ký thất bại";
		
	}
	
	}
?>
     </div>
  </div>
</div>
<!-- InstanceEndEditable -->
<div class="clear"></div>
    <div class="footer" >
    
	   <p>Công ty cổ phần dịch vụ giao hàng ShipperShop</p>
	   <p>Giấy CNĐKDN Số 0311 907 295 do Sở KH và ĐT TP.HCM cấp ngày 02/08/2012, cấp đổi lần 3 ngày 09/06/2014</p>
		

    </div>
</div>
</body>
<!-- InstanceEnd --></html>