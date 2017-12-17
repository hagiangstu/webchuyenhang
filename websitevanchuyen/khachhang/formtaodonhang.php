huy đã sửa
<?php
print_r($_GET);
$ten=$_GET["ten"];
$id=$_GET["ma"];
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
?>
<?php
$sm=postIndex("tao");
$Loaihang=postIndex("Loaihang"); 
$Khoiluong=postIndex("Khoiluong");
$Thuho=postIndex("Thuho");
$Hinhthucchuyen=postIndex("Hinhthucchuyen");
$Mota=postIndex("Mota");
$Thanhtoan=postIndex("Thanhtoan");
$Cuocphi=postIndex("Cuocphi");
$Ngaytao=postIndex("Ngaytao");
?>
<form action="formtaodonhang.php?ten=<?php echo $ten?> & id=<?php echo $id?>" method="post" >
           
            <table align="center"
            <tr><td></td></tr>
           
            <tr><td>Loại hàng:</td><td><select name="Loaihang" required >
            								<option value="">--chọn--</option>
                                            <option  value="1">vật phẩm</option>
                                             <option  value="2">cồng kềnh</option>
                                              <option  value="3">số lượng lớn</option></td></tr></br>
            <tr><td>Khối lượng :</td><td><input type="text" name="Khoiluong" required></td></tr></br>
            <tr><td>Thu hộ :</td><td><input type="text" name="Thuho" required></td></tr></br>
            <hr />
             <tr><td>Hình thức chuyển: </td><td><input type="radio" name="Hinhthucchuyen" value="1" checked="checked" />chuyển thường
             									<input type="radio" name="Hinhthucchuyen" value="2"  />chuyển  nhanh</td></tr></br>
            <tr><td>Mô tả: </td><td><input type="text" name="Mota" required></td></tr></br>
            <tr><td>Thanh toán: </td><td><input type="radio" checked="checked" name="Thanhtoan" value="1" />Tiền mặt
            							<input type="radio" name="Thanhtoan" value="2" />Chuyển khoản</td></tr></br>
            <tr><td>Cước phí: </td><td><input type="text" name="Cuocphi" required ></td><td></td></tr></br>
           	<tr><td> Ngày Tạo đơn: </td><td><input type="date" name="Ngaytao"</td></td></tr>
            <tr><td><input type="submit" name="taodh" value="Tạo" /></td>
            
          	 	
            </table>
            <tr><td><?php ?></td>
            </tr>
            </form>
			<?php
			if (isset($_POST["taodh"]))
	

	{
	$stmt=$pdh->prepare("insert into donhang(IDnvvanchuyenhang,IDnvquanlydonhang,,Ngaytaodonhang,Ngayduyetdon,Xuly,IDkh) values(:IDnvchuyenhang,:IDnvquanlydonhang,:Ngaytaodonhang,:Ngayduyetdon,:Xuly,:IDkh) where IDkh='$id'" );
	$stmt->execute(array(":IDnvchuyenhang"=="",":IDnvquanlydonhang"=="",":ngaytaodonhang"=>$_POST["Ngaytao"],":Ngayduyetdonhang"=="",":Xuly"=='7',":IDkh"=='$id'));
	


	$stmt=$pdh->prepare("insert into thongtindonhang(Loaihang,Khoiluong,Thuho,Hinhthucchuyen,Mota,Thanhtoan,Cuocphi) values(:Loaihang ,:Khoiluong,:Thuho, :Hinhthucchuyen, :Mota ,:Thanhtoan ,:Cuocphi)where IDkh='$id'");
	$stmt->execute( array(":Loaihang"=>$_POST["Loaihang"],":Khoiluong"=>$_POST["Khoiluong"], ":Thuho"=>$_POST["Thuho"] , ":Hinhthucchuyen"=>$_POST["Hinhthucchuyen"]    ,":Mota"=>$_POST["Mota"],      ":Thanhtoan"=>$_POST["Thanhtoan"], ":Cuocphi"=>$_POST["Cuocphi"]));

	$n = $stmt->rowCount();
	
if($n>=1)
		{
				echo"đăng ký thành công";
				}
			else
				echo"đăng ký thất bại";
		
	}
	

?>
            